import 'package:flutter/material.dart';

class SelectableTextExample extends StatefulWidget {
  const SelectableTextExample({super.key});

  @override
  State<SelectableTextExample> createState() => _SelectableTextExampleState();
}

class _SelectableTextExampleState extends State<SelectableTextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selectable Text"),
      ),
      body: Center(
        child: SelectableText(
          "Selectable Text",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
