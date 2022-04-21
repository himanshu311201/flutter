import "package:flutter/material.dart";
import "interndetail.dart";
import 'dart:math' as math;
class InternScreen extends StatefulWidget {
  static const String id = 'search_screen';
  const InternScreen({Key? key}) : super(key: key);
  @override
  _InternScreenState createState() => _InternScreenState();
}
class _InternScreenState extends State<InternScreen> {
  final topGenres = [
    {
      "title": "",
      "image": "/assets/images/internhome.jpeg",
    },
  ];
  final browseGenres = [
    {
      "title": "Google",
      "work":"Software Engineer",
      "money":"30000",
      "image": "/assets/images/Google.jpg",
      "location":"Work from home"
    },
    {
      "title": "Adobe",
      "work":"Data Scientist",
      "money":"10000",
      "image": "/assets/images/adobe.png",
      "location":"Work from home"
    },
    {
      "title": "Microsoft",
      "work":"Program Manager",
      "image": "/assets/images/microsoft.png",
      "money":"20000",
      "location":"Mumbai"
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 3.0, color: Colors.black38),   ),
                        ),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: ' '),
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),   child: Icon(Icons.more_vert_outlined),   ),
                              ),
                              TextSpan(text: 'Internships' ,style:   TextStyle(color: Color(0xff000000), fontSize:  25,fontWeight: FontWeight. bold)),
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 95.0),   child: Icon(Icons.search)
                                  ,
                                ),
                              ),
                                                          ],
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          for (int i = 0; i < browseGenres.length; i++)
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,

                              ),
                                onPressed:(){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AboutScreen()),
                                );
                                },
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(30, 0,0 , 0),

                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(width: 1.0, color: Colors.black),   ),
                                    ),
                                    height: 200.0,
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Column(
                                            children: <Widget>[
                                              Text('${browseGenres[i]['work']}',   style: TextStyle(color: Colors.black,  fontSize: 20)),
                                              Text('${browseGenres[i]['title']}',   style: TextStyle(color: Colors.black,  fontSize: 20)),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(text: ' '),
                                                    WidgetSpan(
                                                      child: Padding(
                                                        padding: const
                                                        EdgeInsets.symmetric(horizontal: 2.0),
                                                        child: Icon(Icons.home,color:  Colors.black26,),
                                                      ),
                                                    ),
                                                    TextSpan(text:
                                                    '${browseGenres[i]['location']}'
                                                        ,
                                                        style:TextStyle(color:Colors.black)),
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(text: ' '),
                                                    WidgetSpan(
                                                      child: Padding(
                                                          padding: const
                                                          EdgeInsets.symmetric(horizontal: 2.0),
                                                          child: Icon(Icons.money,color:  Colors.black26,),

                                                      ),
                                                    ),
                                                    TextSpan(text:
                                                    '${browseGenres[i]['money']}/month',
                                                        style:TextStyle(color:Colors.black)),
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(text: ' '),  WidgetSpan(
                                                      child: Padding(
                                                        padding: const
                                                        EdgeInsets.symmetric(horizontal: 2.0),
                                                        child: Icon(Icons.access_time,color:  Colors.black26,),
                                                      ),
                                                    ),
                                                    TextSpan(text: 'Part Time allowed',
                                                    style:TextStyle(color:Colors.black)
                                                    ),   ],
                                                ),
                                              ),
                                              Container(
                                                  margin:const EdgeInsets.fromLTRB(10, 20, 10,  5),
                                                  decoration: BoxDecoration(   color: Colors.black12,   borderRadius: BorderRadius.only(   topLeft: Radius.circular(16.0),   topRight: Radius.circular( 16.0),   bottomLeft: Radius.circular(16.0),   bottomRight: Radius.circular( 16.0)   )
                                                  ),
                                                  child: Text("Internship",style:  TextStyle(color: Color(0xff000000), fontSize: 15,)
                                                  )
                                              ),
                                            ]),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(100, 0,0 , 0),
                                          child: Transform.rotate(
                                            angle: 0,
                                            origin: const Offset(200, 50),
                                            child: Image(
                                              image: NetworkImage(
                                                  '${browseGenres[i]['image']}'),   width: 70,
                                              height: 70,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
