import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrientatinExample extends StatefulWidget {
  const OrientatinExample({super.key});

  @override
  State<OrientatinExample> createState() => _OrientatinExampleState();
}

class _OrientatinExampleState extends State<OrientatinExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Orientation Example"),
      ),
      body: Center(
        child: SizedBox(
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (MediaQuery.of(context).orientation ==
                    Orientation.portrait) {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.landscapeLeft]);
                } else {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                }
              },
              child: Text(
                "orientation",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
