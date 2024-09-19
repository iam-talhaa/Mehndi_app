// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  bool isFavorite_8 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_8 = !isFavorite_8;
      prefs.setBool('isFavorite_8', isFavorite_8);
      print(isFavorite_8);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_8 = prefs.getBool('isFavorite_8') ?? false;
    });
  }

  List<String> Fav_list_8 = [];

  List<String> tikki = [
    'assets/pictures/tikki (1).jpg',
    'assets/pictures/tikki (2).jpg',
    'assets/pictures/tikki (4).jpg',
    'assets/pictures/tikkiii (1).jpeg',
    'assets/pictures/tikkiii (2).jpeg',
    'assets/pictures/tikkiii (3).jpeg',
    'assets/pictures/tikkiii (4).jpeg',
    'assets/pictures/tikki (5).jpg',
    'assets/pictures/tikkiii (1).jpg',
    'assets/pictures/tikkiii (3).jpg',
    'assets/pictures/tikkiii (5).jpg',
    'assets/pictures/tikkiii (6).jpg',
    'assets/pictures/tikkiii (8).jpg',
    'assets/pictures/tikkiii (9).jpg',
    'assets/pictures/tikkiii (10).jpg',
    'assets/pictures/tikkiii (11).jpg',
    'assets/pictures/tikkiii (13).jpg',
    'assets/pictures/tikkiii (15).jpg',
    'assets/pictures/tikkiii (16).jpg',
    'assets/pictures/tikkiii (17).jpg',
    'assets/pictures/tikkiii (20).jpg',
    'assets/pictures/tikkiii (21).jpg',
    'assets/pictures/tikkiii (22).jpg',
    'assets/pictures/tikkiii (23).jpg',
    'assets/pictures/tikkiii (24).jpg',
    'assets/pictures/tikkiii (25).jpg',
    'assets/pictures/tikkiii (26).jpg',
    'assets/pictures/tikkiii (28).jpg',
    'assets/pictures/tikki (8).jpg',
    'assets/pictures/tikki (9).jpg',
    'assets/pictures/tikki (11).jpg',
    'assets/pictures/tikki (12).jpg',
    'assets/pictures/tikki (14).jpg',
    'assets/pictures/tikki (15).jpg',
    'assets/pictures/tikki (16).jpg',
    'assets/pictures/tikki (17).jpg',
    'assets/pictures/tikki (18).jpg',
    'assets/pictures/tikki (19).jpg',
    'assets/pictures/tikkiiii (1).png',
    'assets/pictures/tikkiiii (1).jpg',
    'assets/pictures/tikkiiii (2).jpg',
    'assets/pictures/tikkiiii (3).jpg',
    'assets/pictures/tikkiiii (4).jpg',
    'assets/pictures/tikkiiii (5).jpg',
    'assets/pictures/tikkiiii (6).jpg',
    'assets/pictures/tikkiiii (7).jpg',
    'assets/pictures/tikkiiii (8).jpg',
    'assets/pictures/tikkiiii (9).jpg',
    'assets/pictures/tikkiiii (10).jpg',
    'assets/pictures/tikkiiii (11).jpg',
    'assets/pictures/tikkiiii (12).jpg',
    'assets/pictures/tikkiiii (13).jpg',
    'assets/pictures/tikkiiii (14).jpg',
    'assets/pictures/tikkiiii (15).jpg',
    'assets/pictures/tikkiiii (16).jpg',
    'assets/pictures/tikkiiii (17).jpg',
    'assets/pictures/tikkiiii (18).jpg',
    'assets/pictures/tikkiiii (19).jpg',
    'assets/pictures/tikkiiii (20).jpg',
    'assets/pictures/tikkiiii (21).jpg',
    'assets/pictures/tikkiiii (22).jpg',
    'assets/pictures/tikkiiii (23).jpg',
    'assets/pictures/tikkiiii (24).jpg',
    'assets/pictures/tikkiiii (25).jpg',
    'assets/pictures/tikkiiii (26).jpg',
    'assets/pictures/tikkiiii (27).jpg',
    'assets/pictures/tikkiiii (28).jpg',
    'assets/pictures/tikkiiii (29).jpg',
    'assets/pictures/tikkiiii (30).jpg',
    'assets/pictures/tikkiiii (31).jpg',
    'assets/pictures/tikkiiii (32).jpg',
    'assets/pictures/tikkiiii (33).jpg',
    'assets/pictures/tikkiiii (34).jpg',
    'assets/pictures/tikkiiii (35).jpg',
    'assets/pictures/tikkiiii (36).jpg',
    'assets/pictures/tikkiiii (37).jpg',
    'assets/pictures/tikkiiii (38).jpg',
    'assets/pictures/tikkiiii (39).jpg',
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
          'Gol Tikki Designs',
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
                  itemCount: tikki.length,
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
                                  tikki[index],
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
                                      if (Fav_list_8.contains(
                                          tikki[index].toString())) {
                                        Fav_list_8.remove(
                                            tikki[index].toString());
                                      } else {
                                        Fav_list_8.add(tikki[index].toString());
                                      }
                                      print(Fav_list_8);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_8
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_8
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
                            tikki[index],
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
