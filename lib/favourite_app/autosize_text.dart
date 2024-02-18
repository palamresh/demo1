import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizeTextExample extends StatefulWidget {
  const AutoSizeTextExample({super.key});

  @override
  State<AutoSizeTextExample> createState() => _AutoSizeTextExampleState();
}

class _AutoSizeTextExampleState extends State<AutoSizeTextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("AutoSizeText Example"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.pink,
            child: ListTile(
              title: Text(
                """asfjrj llasr naslrj nsair""",
                maxLines: 5,
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(" asfjrj llasr naslrj nsair"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(" asfjrj llasr naslrj nsair"),
            ),
          )
        ],
      ),
    );
  }
}
