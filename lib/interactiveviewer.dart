import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatefulWidget {
  const InteractiveViewerExample({super.key});

  @override
  State<InteractiveViewerExample> createState() =>
      _InteractiveViewerExampleState();
}

class _InteractiveViewerExampleState extends State<InteractiveViewerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InteractiveViewer"),
      ),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(300),
        // minScale: 0.6,
        // maxScale: 0.9,
        child: Container(
          height: 700,
          width: 500,
          child: Image.network(
              'https://media.istockphoto.com/id/1552967838/photo/beautiful-summer-landscape-as-an-floral-background-wild-flowers-in-the-meadow-and-sunlight.jpg?b=1&s=612x612&w=0&k=20&c=bJ6Qf7Ilq4b7QpuEOERKPnUho4kJOfnvbFFwTCyCnnk='),
        ),
      ),
    );
  }
}
