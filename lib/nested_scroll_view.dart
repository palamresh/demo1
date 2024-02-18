import 'package:flutter/material.dart';

class NestScrollViewExample extends StatefulWidget {
  const NestScrollViewExample({super.key});

  @override
  State<NestScrollViewExample> createState() => _NestScrollViewExampleState();
}

class _NestScrollViewExampleState extends State<NestScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, bool boolValue) {
            return [
              SliverAppBar(
                leading: Icon(Icons.image),
                backgroundColor: Colors.pink,
                elevation: 10,
                expandedHeight: 30,
                floating: true,
                snap: true,
                title: Text("SliverAppBar"),
              )
            ];
          },
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.zero,
                    height: 100,
                    width: 100,
                    color: Colors.pink.shade100,
                    child: Center(child: Text(index.toString())),
                  ),
                );
              })),
    );
  }
}
