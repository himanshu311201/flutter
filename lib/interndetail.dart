import "package:flutter/material.dart";
import 'dart:math' as math;
class AboutScreen extends StatefulWidget {
  static const String id = 'search_screen';
  const AboutScreen({Key? key}) : super(key: key);
  @override
  _AboutState createState() => _AboutState();
}
class _AboutState extends State<AboutScreen> {
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
      "location":"Work from home",
  "appli":"497 Application"
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
      "location":"Mumbai",

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
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: ' '),
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),   child: Icon(Icons.arrow_back),   ),
                              ),
                              TextSpan(text: 'Internship details' ,style:   TextStyle(color: Color(0xff000000), fontSize:  25,fontWeight: FontWeight. bold)),

                            ],
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          for (int i = 0; i < 1; i++)
                            FractionallySizedBox(
                              widthFactor: 1,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(30, 0,0 , 0),
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
                                    )
                                    
                                  ],
                                ),
                                
                              ),


                            ),
                          FractionallySizedBox(
                            widthFactor: 1,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(30, 0,0 , 0),

                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Column(
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(text: ' '),
                                              WidgetSpan(
                                                child: Padding(
                                                  padding: const
                                                  EdgeInsets.symmetric(horizontal: 2.0),
                                                  child: Icon(Icons.person_add_alt_1_rounded,color:  Colors.black26,),
                                                ),
                                              ),
                                              TextSpan(text:
                                              '${browseGenres[0]['appli']}'
                                                  ,
                                                  style:TextStyle(color:Colors.black)),
                                            ],
                                          ),
                                        ),
                                        Container(
                                        child: Column(
                                          children: [
                                          const Text(
                                            'About Google',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                            SizedBox(
                                              width: 350,
                                              child: Text(
                                                  """Google LLC is an American multinational technology company that focuses on artificial intelligence,[10] search engine, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics. It has been referred to as the "most powerful company in the world" and one of the world's most valuable brands due to its market dominance, data collection, and technological advantages in the area of artificial intelligence"""),
                                            ),

                                            const Text(
                                              'Who can Apply?',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold, fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 350,
                                              child: Text(

                                                  "Only those candidates can apply who:\n1. are available for the work from home job/internship.\n2. can start the work from home job/internship between 12th Apr'22 and 17th May'22\n3. are available for duration of 1 month\n4. have relevant skills and interests"),
                                            ),
                                            const Text(
                                              'No. of Openings',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold, fontSize: 15),
                                            ),
                                            const Text(
                                              '10',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal, fontSize: 15),
                                            ),
                                            const Text(
                                              'Perks',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold, fontSize: 15),
                                            ),

                                        ],
                                        ),

                                        ),
                                        Container(
                                            margin:const EdgeInsets.fromLTRB(0, 0, 0,  0),
                                            decoration: BoxDecoration(   color: Colors.black12,   borderRadius: BorderRadius.only(   topLeft: Radius.circular(16.0),   topRight: Radius.circular( 16.0),   bottomLeft: Radius.circular(16.0),   bottomRight: Radius.circular( 16.0)   )
                                            ),
                                            child: Text("Certificate",style:  TextStyle(color: Color(0xff000000), fontSize: 15,)
                                            )
                                        ),
                                        Container(
                                            margin:const EdgeInsets.fromLTRB(0,0, 0,  30),
                                            decoration: BoxDecoration(   color: Colors.black12,   borderRadius: BorderRadius.only(   topLeft: Radius.circular(16.0),   topRight: Radius.circular( 16.0),   bottomLeft: Radius.circular(16.0),   bottomRight: Radius.circular( 16.0)   )
                                            ),
                                            child: Text("Letter of Recommendation",style:  TextStyle(color: Color(0xff000000), fontSize: 15,)
                                            )

                                        ),
                                        Container(
                                          child: ElevatedButton(
                                            child: const Text(
                                              'Apply Now',
                                              style: TextStyle(color: Colors.white),
                                            ),
                                            onPressed:(){
                                            },

                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.blue,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 140, vertical: 10),
                                                textStyle: const TextStyle(
                                                    fontFamily: 'Raleway',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                      ]),


                                ],
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
