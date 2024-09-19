// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  bool isFavorite_6 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_6 = !isFavorite_6;
      prefs.setBool('isFavorite_6', isFavorite_6);
      print(isFavorite_6);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_6 = prefs.getBool('isFavorite_6') ?? false;
    });
  }

  List<String> Fav_list_6 = [];

  List<String> finger = [
    'assets/pictures/finger (2).jpeg',
    'assets/pictures/finger (20).jpeg',
    'assets/pictures/finger (1).jpg',
    'assets/pictures/finger (3).jpg',
    'assets/pictures/finger (4).jpg',
    'assets/pictures/finger (5).jpg',
    'assets/pictures/fingerss (1).png',
    'assets/pictures/fingerss (2).png',
    'assets/pictures/fingerss (1).jpg',
    'assets/pictures/finger (6).jpg',
    'assets/pictures/finger (7).jpg',
    'assets/pictures/finger (8).jpg',
    'assets/pictures/finger (9).jpg',
    'assets/pictures/finger (10).jpg',
    'assets/pictures/fingerrrr (1).jpg',
    'assets/pictures/fingerrrr (2).jpg',
    'assets/pictures/fingerrrr (3).jpg',
    'assets/pictures/fingerrrr (4).jpg',
    'assets/pictures/fingerrrr (5).jpg',
    'assets/pictures/fingerrrr (6).jpg',
    'assets/pictures/fingerrrr (7).jpg',
    'assets/pictures/fingerrrr (8).jpg',
    'assets/pictures/fingerrrr (9).jpg',
    'assets/pictures/fingerrrr (10).jpg',
    'assets/pictures/finger (11).jpg',
    'assets/pictures/fingerss (2).jpg',
    'assets/pictures/fingerss (3).jpg',
    'assets/pictures/fingerss (4).jpg',
    'assets/pictures/fingerss (5).jpg',
    'assets/pictures/fingerss (6).jpg',
    'assets/pictures/fingerss (7).jpg',
    'assets/pictures/fingerss (8).jpg',
    'assets/pictures/fingerss (9).jpg',
    'assets/pictures/fingerss (10).jpg',
    'assets/pictures/fingerss (11).jpg',
    'assets/pictures/fingerss (12).jpg',
    'assets/pictures/fingerss (13).jpg',
    'assets/pictures/fingerss (15).jpg',
    'assets/pictures/fingerss (16).jpg',
    'assets/pictures/finger (12).jpg',
    'assets/pictures/finger (13).jpg',
    'assets/pictures/finger (14).jpg',
    'assets/pictures/finger (15).jpg',
    'assets/pictures/finger (16).jpg',
    'assets/pictures/fingerrrr (11).jpg',
    'assets/pictures/fingerrrr (12).jpg',
    'assets/pictures/fingerrrr (13).jpg',
    'assets/pictures/fingerrrr (14).jpg',
    'assets/pictures/fingerrrr (15).jpg',
    'assets/pictures/fingerrrr (16).jpg',
    'assets/pictures/fingerrrr (17).jpg',
    'assets/pictures/fingerrrr (18).jpg',
    'assets/pictures/fingerrrr (19).jpg',
    'assets/pictures/fingerrrr (20).jpg',
    'assets/pictures/fingerrrr (21).jpg',
    'assets/pictures/fingerrrr (22).jpg',
    'assets/pictures/fingerrrr (23).jpg',
    'assets/pictures/fingerrrr (24).jpg',
    'assets/pictures/fingerrrr (25).jpg',
    'assets/pictures/fingerrrr (26).jpg',
    'assets/pictures/fingerrrr (27).jpg',
    'assets/pictures/fingerrrr (28).jpg',
    'assets/pictures/fingerrrr (29).jpg',
    'assets/pictures/fingerrrr (30).jpg',
    'assets/pictures/fingerss (1).jpeg',
    'assets/pictures/finger (18).jpg',
    'assets/pictures/finger (19).jpg',
    'assets/pictures/finger (21).jpg',
    'assets/pictures/fingerrrr (1).jpeg',
    'assets/pictures/fingerrrr (2).jpeg',
    'assets/pictures/fingerrrr (1).png',
    'assets/pictures/fingerrrr (2).png',
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
          'Fingers Designs',
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
                  itemCount: finger.length,
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
                                  finger[index],
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
                                      if (Fav_list_6.contains(
                                          finger[index].toString())) {
                                        Fav_list_6.remove(
                                            finger[index].toString());
                                      } else {
                                        Fav_list_6.add(
                                            finger[index].toString());
                                      }
                                      print(Fav_list_6);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_6
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_6
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
                            finger[index],
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
