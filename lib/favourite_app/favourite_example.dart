import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class FavouriteExample extends StatefulWidget {
  const FavouriteExample({super.key});

  @override
  State<FavouriteExample> createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Exmaple"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                shadowColor: Colors.blueAccent,
                elevation: 50,
                color: Colors.greenAccent[100],
                child: SizedBox(
                  width: 350,
                  height: 700,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 108,
                          child: CircleAvatar(
                              radius: 100,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg')),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "GeeksforGeeks",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.green[900],
                              fontWeight: FontWeight.w500),
                        ),

                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          """GeeksforGeeks is a computer science portal
                          for geeks at geeksforgeeks.org. It contains 
                          well written, well thought and well explained
                          computer science and programming articles,
                          quizzes, projects, interview experiences 
                          and much more!!""",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green[900],
                          ), //Textstyle
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.touch_app),
                                  Text(
                                    "Visite",
                                  ),
                                ],
                              )),
                        ),

                        FavoriteButton(
                            isFavorite: false,
                            valueChanged: (_favour) {
                              print('is favourt $_favour');
                            })
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.yellow,
                elevation: 50,
                color: Colors.yellowAccent[100],
                child: SizedBox(
                  width: 350,
                  height: 700,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 108,
                          child: CircleAvatar(
                              radius: 100,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg')),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "GeeksforGeeks",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.yellow[900],
                              fontWeight: FontWeight.w500),
                        ),

                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          """GeeksforGeeks is a computer science portal
                          for geeks at geeksforgeeks.org. It contains 
                          well written, well thought and well explained
                          computer science and programming articles,
                          quizzes, projects, interview experiences 
                          and much more!!""",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.yellow[900],
                          ), //Textstyle
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.touch_app),
                                  Text(
                                    "Visite",
                                  ),
                                ],
                              )),
                        ),

                        FavoriteButton(
                            isFavorite: false,
                            valueChanged: (_favour) {
                              print('is favourt $_favour');
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
