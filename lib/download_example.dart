import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageSaveExample extends StatefulWidget {
  const ImageSaveExample({super.key});

  @override
  State<ImageSaveExample> createState() => ImageSaveExampleState();
}

class ImageSaveExampleState extends State<ImageSaveExample> {
  var permissionGranted = false;
  String url =
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/09/instagram-image-size.jpg";

  _saveNetworkImage() async {
    var response = await Dio()
        .get(url, options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: DateTime.now().millisecond.toString());
    print(result);
  }

  Future _getStoragePermission() async {
    if (await Permission.storage.request().isGranted) {
      setState(() {
        permissionGranted = true;
      });
    } else if (await Permission.storage.request().isPermanentlyDenied) {
      await openAppSettings();
    } else if (await Permission.storage.request().isDenied) {
      setState(() {
        permissionGranted = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getStoragePermission();
          _saveNetworkImage();
        },
        child: Icon(Icons.download),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Image Save Exmaple"),
      ),
      body: Center(
        child: Image.network(url),
      ),
    );
  }
}
