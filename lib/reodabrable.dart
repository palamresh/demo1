import 'package:flutter/material.dart';

class Reodabrable extends StatefulWidget {
  const Reodabrable({super.key});

  @override
  State<Reodabrable> createState() => _ReodabrableState();
}

class _ReodabrableState extends State<Reodabrable> {
  List<String> item = [
    "GeeksforGeeks",
    "Flutter",
    "Developer",
    "Android",
    "Programming",
    "CplusPlus",
    "Python",
    "javascript"
  ];

  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = item.removeAt(oldindex);
      item.insert(newindex, items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Reodabrable Example"),
      ),
      body: ReorderableListView(
        onReorder: reorderData,
        children: [
          for (final items in item)
            Card(
              color: Colors.white,
              key: ValueKey(items),
              elevation: 2,
              child: ListTile(
                title: Text(items),
                trailing: Icon(Icons.more_vert),
              ),
            ),
        ],
      ),
    );
  }
}
