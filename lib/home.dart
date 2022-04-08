import "package:flutter/material.dart";

import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

import 'package:untitled/intern.dart';
class HomeScreen extends StatefulWidget {
  static const String id = 'search_screen';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final topsc = [
    {
      "title": "",
      "image": "/assets/images/internhome.jpeg",
    },
  ];
  final browsecat = [
    {
      "title": "Science",
      "image": "/assets/images/Science.jpeg",
    },
    {
      "title": "Engineering",
      "image": "/assets/images/Engineer.jpeg",
    },
    {
      "title": "Parttime",
      "image": "/assets/images/parttime.jpeg",
    },
  ];
  final browsesc = [
    {
      "title": "Work from home",
      "image": "/assets/images/Delhi.jpeg",
    },
    {
      "title": "Delhi",
      "image": "/assets/images/work.jpeg",
    },
    {
      "title": "Bangalore",
      "image": "/assets/images/Bangalore.jpeg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 15, vertical:
                  10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: const Text(
                          'Internshala',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "What are you looking for?",
                            hintStyle: TextStyle(
                              letterSpacing: 0.1,
                              fontSize: 14,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: const Icon(
                              Icons.search_rounded,
                              color: Colors.black,
                            )),
                      ),
                      Wrap(
                        children: [
                          CarouselSlider(
                            items: [

                              //1st Image of Slider
                              Transform.rotate(
                                angle: 0,
                                origin: const Offset(0, 0),
                                child: Image(
                                  image: NetworkImage(
                                      '/assets/images/caro3.jpeg'),
                                  width: 350,
                                  height: 255,
                                ),
                              ),

                              //2nd Image of Slider
                              Transform.rotate(
                                angle: 0,
                                origin: const Offset(0, 0),
                                child: Image(
                                  image: NetworkImage(
                                      '/assets/images/caro2.jpeg'),
                                  width: 350,
                                  height: 255,
                                ),
                              ),

                              //3rd Image of Slider
                              Transform.rotate(
                                angle: 0,
                                origin: const Offset(0, 0),
                                child: Image(
                                  image: NetworkImage(
                                      '/assets/images/caro1.jpeg'),
                                  width: 350,
                                  height: 255,
                                ),
                              ),

                              //4th Image of Slider


                            ],

                            //Slider Container properties
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                        child: const Text(
                          'Internships',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(70, 0, 0, 20),
                        child: const Text(
                          'Apply to 10,000+ internship',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(125, 0, 0, 0),
                        child: const Text(
                          'Popular Cities',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal, fontSize: 15),
                        ),
                      ),
                      Wrap(
                        children: [
                          for (int i = 0; i < browsesc.length; i++)
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                              primary: Colors.white,

    ),
                              onPressed:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const InternScreen()),
                                );
                              },
                              child: FractionallySizedBox(
                                widthFactor: 0.27,
                                child: Container(
                                  height: 125.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: 0,
                                          origin: const Offset(0, 0),
                                          child: Image(
                                            image: NetworkImage(
                                                '${browsesc[i]['image']}'),
                                            width: 70,
                                            height: 125,
                                          ),
                                        ),
                                        Container(

                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(125, 0, 0, 0),
                        child: const Text(
                          'Popular Categories',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal, fontSize: 15),
                        ),
                      ),
                      Wrap(
                        children: [

                          for (int i = 0; i < browsecat.length; i++)
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,

                              ),
                              onPressed:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const InternScreen()),
                                );
                              },

                              child: FractionallySizedBox(
                                widthFactor: 0.27,
                                child: Container(
                                  height: 125.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: 0,
                                          origin: const Offset(0, 0),
                                          child: Image(
                                            image: NetworkImage(
                                                '${browsecat[i]['image']}'),
                                            width: 70,
                                            height: 125,
                                          ),
                                        ),
                                        Container(

                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),);
  }
}