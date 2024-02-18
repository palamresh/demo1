import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardb = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTileExample"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ExpansionTileCard(
            key: cardb,
            leading: CircleAvatar(child: Text('A')),
            title: Text('Tap to Expand!'),
            subtitle: Text('It has the GFG Logo.'),
            children: <Widget>[
              Divider(
                height: 4.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg')),
              ),
            ],
          ),
        ),
        SizedBox(
          child: ExpansionTileCard(
            key: cardA,
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text("B"),
            ),
            title: Text("Demo example of expansiontilecard "),
            children: [
              Divider(
                thickness: 3,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.network(
                      'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
