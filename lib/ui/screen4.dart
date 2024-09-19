// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isFavorite_4 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_4 = !isFavorite_4;
      prefs.setBool('isFavorite_4', isFavorite_4);
      print(isFavorite_4);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_4 = prefs.getBool('isFavorite') ?? false;
    });
  }

  List<String> Fav_list_4 = [];

  List<String> bridal = [
    'assets/pictures/bridal (1) copy.jpg',
    'assets/pictures/bridalbb (1).jpeg',
    'assets/pictures/bridalbb (2).jpeg',
    'assets/pictures/bridalbb (1).png',
    'assets/pictures/bridalbb (2).png',
    'assets/pictures/bridalbb (1).jpg',
    'assets/pictures/bridalbb (2).jpg',
    'assets/pictures/bridalbb (3).jpg',
    'assets/pictures/bridalbb (4).jpg',
    'assets/pictures/bridalbb (5).jpg',
    'assets/pictures/bridalbb (6).jpg',
    'assets/pictures/bridalbb (7).jpg',
    'assets/pictures/bridalbb (8).jpg',
    'assets/pictures/bridalbb (9).jpg',
    'assets/pictures/bridalbb (10).jpg',
    'assets/pictures/bridalbb (11).jpg',
    'assets/pictures/bridalbb (20).jpg',
    'assets/pictures/bridalbb (13).jpg',
    'assets/pictures/bridalbb (14).jpg',
    'assets/pictures/bridalbb (15).jpg',
    'assets/pictures/bridalbb (16).jpg',
    'assets/pictures/bridalbb (17).jpg',
    'assets/pictures/bridalbb (18).jpg',
    'assets/pictures/bridalbb (19).jpg',
    'assets/pictures/bridalbb (22).jpg',
    'assets/pictures/bridalbb (21).jpg',
    'assets/pictures/bridalbb (23).jpg',
    'assets/pictures/bridal (20).png',
    'assets/pictures/bridal (22).jpeg',
    'assets/pictures/bridal (3).jpg',
    'assets/pictures/bridal (4).jpg',
    'assets/pictures/bridal (5).jpg',
    'assets/pictures/bridal (6).jpg',
    'assets/pictures/bridal (7).jpg',
    'assets/pictures/bridal (10).jpg',
    'assets/pictures/bridal (11).jpg',
    'assets/pictures/bridal (12).jpg',
    'assets/pictures/bridal (13).jpg',
    'assets/pictures/bridal (14).jpg',
    'assets/pictures/bridal (15).jpg',
    'assets/pictures/bridal (16).jpg',
    'assets/pictures/bridal (19).jpg',
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
          'Bridal Mehndi Designs',
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
                  itemCount: bridal.length,
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
                                clipBehavior: Clip.none,
                                boundaryMargin: const EdgeInsets.all(8.0),
                                minScale: 1.0,
                                maxScale: 4.0,
                                child: Image.asset(
                                  bridal[index],
                                  height: 550,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              )),
                              SizedBox(
                                height: 40,
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
                                      if (Fav_list_4.contains(
                                          bridal[index].toString())) {
                                        Fav_list_4.remove(
                                            bridal[index].toString());
                                      } else {
                                        Fav_list_4.add(
                                            bridal[index].toString());
                                      }
                                      print(Fav_list_4);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_4
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_4
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
                            bridal[index],
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
