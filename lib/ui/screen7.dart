// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  bool isFavorite_7 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_7 = !isFavorite_7;
      prefs.setBool('isFavorite_7', isFavorite_7);
      print(isFavorite_7);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_7 = prefs.getBool('isFavorite') ?? false;
    });
  }

  List<String> Fav_list_7 = [];

  List<String> arm = [
    'assets/pictures/arm (1).jpeg',
    'assets/pictures/arm (2).jpg',
    'assets/pictures/arm (3).jpg',
    'assets/pictures/arm (4).jpg',
    'assets/pictures/arm (5).jpg',
    'assets/pictures/arm (6).jpg',
    'assets/pictures/arm (7).jpg',
    'assets/pictures/arm (8).jpg',
    'assets/pictures/arm (9).jpg',
    'assets/pictures/arm (10).jpg',
    'assets/pictures/arm (11).jpg',
    'assets/pictures/arm (12).jpg',
    'assets/pictures/arm (13).jpg',
    'assets/pictures/arm (14).jpg',
    'assets/pictures/arm (15).jpg',
    'assets/pictures/arm (16).jpg',
    'assets/pictures/arm (17).jpg',
    'assets/pictures/arm (18).jpg',
    'assets/pictures/arm (19).png',
    'assets/pictures/arm (20).jpg',
    'assets/pictures/armss (1).png',
    'assets/pictures/armss (2).png',
    'assets/pictures/armss (1).jpeg',
    'assets/pictures/armss (1).jpg',
    'assets/pictures/armss (2).jpg',
    'assets/pictures/armss (3).jpg',
    'assets/pictures/armss (4).jpg',
    'assets/pictures/armss (5).jpg',
    'assets/pictures/armss (6).jpg',
    'assets/pictures/armss (7).jpg',
    'assets/pictures/armss (8).jpg',
    'assets/pictures/armss (9).jpg',
    'assets/pictures/armss (10).jpg',
    'assets/pictures/armss (11).jpg',
    'assets/pictures/armss (12).jpg',
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
          'Arms Designs',
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
                  itemCount: arm.length,
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
                                  arm[index],
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
                                      if (Fav_list_7.contains(
                                          arm[index].toString())) {
                                        Fav_list_7.remove(
                                            arm[index].toString());
                                      } else {
                                        Fav_list_7.add(arm[index].toString());
                                      }
                                      print(Fav_list_7);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_7
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_7
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
                            arm[index],
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
