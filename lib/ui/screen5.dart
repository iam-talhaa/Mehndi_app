// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool isFavorite_5 = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  Future<void> Favourite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_5 = !isFavorite_5;
      prefs.setBool('isFavorite_5', isFavorite_5);
      print(isFavorite_5);
    });
  }

  Future<void> GetData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite_5 = prefs.getBool('isFavorite') ?? false;
    });
  }

  List<String> Fav_list_5 = [];

  List<String> foot = [
    'assets/pictures/footff (1).jpeg',
    'assets/pictures/footff (2).jpeg',
    'assets/pictures/footff (1).png',
    'assets/pictures/footff (1).jpg',
    'assets/pictures/footff (2).jpg',
    'assets/pictures/footff (3).jpg',
    'assets/pictures/footff (4).jpg',
    'assets/pictures/footff (5).jpg',
    'assets/pictures/footff (6).jpg',
    'assets/pictures/footff (7).jpg',
    'assets/pictures/footff (8).jpg',
    'assets/pictures/footff (9).jpg',
    'assets/pictures/footff (10).jpg',
    'assets/pictures/footff (11).jpg',
    'assets/pictures/footff (12).jpg',
    'assets/pictures/footff (13).jpg',
    'assets/pictures/footff (14).jpg',
    'assets/pictures/footff (15).jpg',
    'assets/pictures/footff (16).jpg',
    'assets/pictures/footff (17).jpg',
    'assets/pictures/footff (18).jpg',
    'assets/pictures/footff (19).jpg',
    'assets/pictures/footff (20).jpg',
    'assets/pictures/footff (21).jpg',
    'assets/pictures/footff (22).jpg',
    'assets/pictures/footff (23).jpg',
    'assets/pictures/foot (3).jpg',
    'assets/pictures/foot (4).jpg',
    'assets/pictures/foot (5).jpg',
    'assets/pictures/foot (6).jpg',
    'assets/pictures/foot (7).jpg',
    'assets/pictures/foot (8).jpg',
    'assets/pictures/foot (9).jpg',
    'assets/pictures/foot (10).jpg',
    'assets/pictures/foot (11).jpg',
    'assets/pictures/foot (12).jpg',
    'assets/pictures/foot (13).jpg',
    'assets/pictures/foot (14).jpg',
    'assets/pictures/foot (15).jpg',
    'assets/pictures/foot (16).jpg',
    'assets/pictures/foot (17).jpg',
    'assets/pictures/foot (18).jpg',
    'assets/pictures/foot (19).jpg',
    'assets/pictures/foot (20).jpg',
    'assets/pictures/foot (21).jpg',
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
          'Foot Designs',
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
                  itemCount: foot.length,
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
                                  foot[index],
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
                                      if (Fav_list_5.contains(
                                          foot[index].toString())) {
                                        Fav_list_5.remove(
                                            foot[index].toString());
                                      } else {
                                        Fav_list_5.add(foot[index].toString());
                                      }
                                      print(Fav_list_5);
                                      setState(() {
                                        Favourite();
                                      });
                                    },
                                    child: Icon(
                                      isFavorite_5
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: isFavorite_5
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
                            foot[index],
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
