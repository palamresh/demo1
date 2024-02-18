import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Speed_Dial_Example extends StatefulWidget {
  const Speed_Dial_Example({super.key});

  @override
  State<Speed_Dial_Example> createState() => _Speed_Dial_ExampleState();
}

class _Speed_Dial_ExampleState extends State<Speed_Dial_Example> {
  SpeedDial buildspeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: Colors.green,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onTap: () {
              print('click method call');
            },
            backgroundColor: Colors.green),
        SpeedDialChild(
            child: Icon(Icons.av_timer),
            backgroundColor: Colors.green,
            label: "Label Name",
            labelBackgroundColor: Colors.amber,
            onTap: () {
              print('colors. amer');
            },
            labelStyle: TextStyle(fontSize: 20)),
        SpeedDialChild()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildspeedDial(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Speet Dialog Example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {}, child: Text("Speed Dialog Example")),
      ),
    );
  }
}
