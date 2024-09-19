// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isFavorite_2 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_2 = !isFavorite_2;
      prefs.setBool('isFavorite_2', isFavorite_2);
      print(isFavorite_2);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_2 = prefs.getBool('isFavorite_2') ?? false;
    });
  }

  List<String> Fav_list_2 = [];

  List<String> images = [
    'assets/pictures/back (20).jpg',
    'assets/pictures/back (15).jpg',
    'assets/pictures/back (16).jpg',
    'assets/pictures/back (1).jpeg',
    'assets/pictures/back (2).jpg',
    'assets/pictures/back (3).jpg',
    'assets/pictures/backkk (1).jpeg',
    'assets/pictures/back (5).jpg',
    'assets/pictures/back (7).jpg',
    'assets/pictures/back (8).jpg',
    'assets/pictures/back.jpg',
    'assets/pictures/backkk (1).jpg',
    'assets/pictures/back (10).jpg',
    'assets/pictures/backkk (3).jpeg',
    'assets/pictures/backkk (2).jpeg',
    'assets/pictures/backkk (3).jpg',
    'assets/pictures/back (12).jpg',
    'assets/pictures/back (13).jpg',
    'assets/pictures/backkk (4).jpg',
    'assets/pictures/backkk (5).jpg',
    'assets/pictures/backkk (6).jpg',
    'assets/pictures/backkk (7).jpg',
    'assets/pictures/backkk (8).jpg',
    'assets/pictures/backkkk.jpg',
    'assets/pictures/backkk (9).jpg',
    'assets/pictures/backkk (10).jpg',
    'assets/pictures/backkk (11).jpg',
    'assets/pictures/backkk (12).jpg',
    'assets/pictures/backkk (12).jpg',
    'assets/pictures/backkk (13).jpg',
    'assets/pictures/backkk (14).jpg',
    'assets/pictures/backkk (15).jpg',
    'assets/pictures/backkk (16).jpg',
    'assets/pictures/backkk (17).jpg',
    'assets/pictures/backkk (18).jpg',
    'assets/pictures/backkk (2) copy.jpg',
    'assets/pictures/backkk (3) copy.jpg',
    'assets/pictures/backkk (4) copy.jpg',
    'assets/pictures/backkk (19).jpg',
    'assets/pictures/backkk (20).jpg',
    'assets/pictures/back (17).jpg',
    'assets/pictures/back (18).jpg',
    'assets/pictures/back (19).jpg',
    'assets/pictures/back (21).jpg',
    'assets/pictures/back (22).jpg',
    'assets/pictures/back (23).jpg',
    'assets/pictures/back (25).jpg',
    'assets/pictures/back (27).jpg',
    'assets/pictures/back (29).jpg',
    'assets/pictures/back (30).jpg',
    'assets/pictures/back (31).jpg',
    'assets/pictures/back (34).jpg',
    'assets/pictures/back (35).jpg',
    'assets/pictures/back (36).jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 26, 22),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 26, 22),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Back Hand Designs',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: InteractiveViewer(
                                boundaryMargin: const EdgeInsets.all(8.0),
                                minScale: 0.5,
                                maxScale: 5.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Image.asset(
                                      images[index],
                                      height: 550,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (Fav_list_2.contains(
                                          images[index].toString())) {
                                        Fav_list_2.remove(
                                            images[index].toString());
                                      } else {
                                        Fav_list_2.add(
                                            images[index].toString());
                                      }
                                      print(Fav_list_2);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_2
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_2
                                          ? Colors.red
                                          : Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Icon(
                                    Icons.swap_horiz,
                                    color: Colors.white,
                                    size: 35,
                                  )
                                ],
                              ),
                            ],
                          );
                        }));
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(13.0), // Rounded edges
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
