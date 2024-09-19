// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  bool isFavorite_9 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_9 = !isFavorite_9;
      prefs.setBool('isFavorite_9', isFavorite_9);
      print(isFavorite_9);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_9 = prefs.getBool('isFavorite_9') ?? false;
    });
  }

  List<String> Fav_list_9 = [];

  List<String> eid = [
    'assets/pictures/eiddd.jpeg',
    'assets/pictures/eid (2).jpg',
    'assets/pictures/eid (3).jpg',
    'assets/pictures/eid (4).jpg',
    'assets/pictures/eid (5).jpg',
    'assets/pictures/eid (6).jpg',
    'assets/pictures/eid (7).jpg',
    'assets/pictures/eid (8).jpg',
    'assets/pictures/eid (9).jpg',
    'assets/pictures/eid (10).jpg',
    'assets/pictures/eid (11).jpg',
    'assets/pictures/eiid (1).jpeg',
    'assets/pictures/eiid (3).jpeg',
    'assets/pictures/eiid (2).jpg',
    'assets/pictures/eiid (1).jpg',
    'assets/pictures/eiid (1).jpeg',
    'assets/pictures/eid (14).jpg',
    'assets/pictures/backkk (3) copy.jpg',
    'assets/pictures/eidiii (1).jpeg',
    'assets/pictures/eidiii (2).jpeg',
    'assets/pictures/eidiii (3).jpeg',
    'assets/pictures/eidiii (1).jpg',
    'assets/pictures/eidiii (2).jpg',
    'assets/pictures/eidiii (3).jpg',
    'assets/pictures/eidiii (4).jpg',
    'assets/pictures/eidiii (5).jpg',
    'assets/pictures/eidiii (6).jpg',
    'assets/pictures/eidiii (7).jpg',
    'assets/pictures/eidiii (8).jpg',
    'assets/pictures/eidiii (9).jpg',
    'assets/pictures/eidiii (10).jpg',
    'assets/pictures/eidiii (11).jpg',
    'assets/pictures/eidiii (12).jpg',
    'assets/pictures/eidiii (13).jpg',
    'assets/pictures/eidiii (14).jpg',
    'assets/pictures/eidiii (15).jpg',
    'assets/pictures/eidiii (16).jpg',
    'assets/pictures/eidiii (17).jpg',
    'assets/pictures/eidiii (18).jpg',
    'assets/pictures/eidiii (19).jpg',
    'assets/pictures/eidiii (20).jpg',
    'assets/pictures/eidiii (21).jpg',
    'assets/pictures/eidiii (22).jpg',
    'assets/pictures/eidiii (23).jpg',
    'assets/pictures/eidiii (24).jpg',
    'assets/pictures/eidiii (25).jpg',
    'assets/pictures/eidiii (26).jpg',
    'assets/pictures/eidiii (27).jpg',
    'assets/pictures/eidiii (28).jpg',
    'assets/pictures/eidiii (29).jpg',
    'assets/pictures/eidiii (30).jpg',
    'assets/pictures/eidiii (31).jpg',
    'assets/pictures/eidiii (32).jpg',
    'assets/pictures/eidiii (33).jpg',
    'assets/pictures/eidiii (34).jpg',
    'assets/pictures/eidiii (35).jpg',
    'assets/pictures/eidiii (36).jpg',
    'assets/pictures/eidiii (37).jpg',
    'assets/pictures/eidiii (38).jpg',
    'assets/pictures/eidiii (39).jpg',
    'assets/pictures/eidiii (40).jpg',
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
          'Eid Special Designs',
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
                  itemCount: eid.length,
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
                                  eid[index],
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
                                      if (Fav_list_9.contains(
                                          eid[index].toString())) {
                                        Fav_list_9.remove(
                                            eid[index].toString());
                                      } else {
                                        Fav_list_9.add(eid[index].toString());
                                      }
                                      print(Fav_list_9);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_9
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_9
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
                            eid[index],
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
