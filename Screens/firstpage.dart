import 'package:carousel_slider/carousel_slider.dart';
import 'package:driving_licence_quiz/Datta/quizes/motor/quiz1.dart';
import 'package:driving_licence_quiz/Datta/quizes/paye2/quiz1.dart';
import 'package:driving_licence_quiz/Datta/quizes/paye3/quiz1.dart';
import 'package:driving_licence_quiz/Screens/aboutme.dart';
import 'package:driving_licence_quiz/Screens/quizmenu.dart';
import 'package:flutter/material.dart';

import '../Datta/quizes/motor/quiz2.dart';
import '../Datta/quizes/motor/quiz3.dart';
import '../Datta/quizes/motor/quiz4.dart';
import '../Datta/quizes/motor/quiz5.dart';
import '../Datta/quizes/paye2/quiz2.dart';
import '../Datta/quizes/paye2/quiz3.dart';
import '../Datta/quizes/paye2/quiz4.dart';
import '../Datta/quizes/paye2/quiz5.dart';
import '../Datta/quizes/paye3/quiz2.dart';
import '../Datta/quizes/paye3/quiz3.dart';
import '../Datta/quizes/paye3/quiz4.dart';
import '../Datta/quizes/paye3/quiz5.dart';

class firstpageApp extends StatefulWidget {
  const firstpageApp({Key? key}) : super(key: key);

  @override
  State<firstpageApp> createState() => _firstpageAppState();
}

class _firstpageAppState extends State<firstpageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xFFEFF5FF),
                Color(0xFFEFF5FF),
              ])),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('images/ui/chair.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('images/ui/car.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('images/ui/home.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                              'images/ui/coment.png',
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('images/ui/chair.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('images/ui/motor.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 500),
                      viewportFraction: 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 80,
                ),
                InkWell(
                  ////////////////////////////////////////////////////////////////motor
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Quizmenu(
                        title: 'آزمون آیین نامه موتورسیکلت',
                        img: 'motorcycle',
                        index: 1,
                        index2: 2,
                        index3: 3,
                        index4: 4,
                        index5: 5,
                        getdata: mqusttions1,
                        getdata2: mqusttions2,
                        getdata3: mqusttions3,
                        getdata4: mqusttions4,
                        getdata5: mqusttions5,
                      );
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Text(
                            'آزمون آیین نامه موتورسیکلت ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            image: AssetImage('images/ui/motor.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  /////////////////////////////////////////////////////////// paye3
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Quizmenu(
                        title: 'آزمون آیین نامه رانندگی پایه 3',
                        img: 'tire',
                        index: 1,
                        index2: 2,
                        index3: 3,
                        index4: 4,
                        index5: 5,
                        getdata: P1qusttions3,
                        getdata2: P1qusttions2,
                        getdata3: P1qusttions4,
                        getdata4: qusttions1,
                        getdata5: P1qusttions5,
                      );
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        children: [
                          Text(
                            'آزمون آیین نامه رانندگی پایه 3',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            image: AssetImage('images/ui/car.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  //////////////////////////////////////////////////////////////paye2
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Quizmenu(
                        title: 'آزمون آیین نامه رانندگی پایه 2 ',
                        img: 'mini',
                        index: 1,
                        index2: 2,
                        index3: 3,
                        index4: 4,
                        index5: 5,
                        getdata: P2qusttions1,
                        getdata2: P2qusttions2,
                        getdata3: P3qusttions3,
                        getdata4: P3qusttion4,
                        getdata5: P3qusttion5,
                      );
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Text(
                            'آزمون آیین نامه رانندگی پایه 2 ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            image: AssetImage('images/ui/trunk.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  //////////////////////////////////////////////////////////fani
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return Quizmenu(
                    //     title: 'آزمون فنی',
                    //     img: 'gera',
                    //     index: 1,
                    //     index2: 2,
                    //     index3: 3,
                    //     index4: 4,
                    //     index5: 5,
                    //     getdata: qusttions1,
                    //     getdata2: qusttions1,
                    //     getdata3: qusttions1,
                    //     getdata4: qusttions1,
                    //     getdata5: qusttions1,
                    //   );
                    // }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        children: [
                          Text(
                            'آزمون فنی (به زودی) ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            image: AssetImage('images/ui/fani.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  //////////////////////////////////////////////////////////////city
                  onTap: () {
                    //
                    //

                    //
                    //

                    //

                    //
                    //
                    //
                    //
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Text(
                            '   آموزش  رانندگی شهر (به زودی) ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            image: AssetImage('images/ui/drive.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  ////////////////////////////////////////////////////////////paye1
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return Quizmenu(
                    //     title: 'آزمون آیین نامه رانندگی پایه 1',
                    //     img: 'trunk0',
                    //     index: 1,
                    //     index2: 2,
                    //     index3: '3 به زودی ',
                    //     index4: '4 به زودی ',
                    //     index5: '5 به زودی ',
                    //     getdata: qusttions1,
                    //     getdata2: qusttions1,
                    //     getdata3: qusttions1,
                    //     getdata4: qusttions1,
                    //     getdata5: qusttions1,
                    //   );
                    // }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        children: [
                          Text(
                            '  آزمون آیین نامه رانندگی پایه یک  (به زودی)   ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            image: AssetImage('images/ui/bus.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return aboutme();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Text(
                            'درباره من ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          Image(
                            height: 220,
                            alignment: Alignment.center,
                            image: AssetImage('images/ui/about.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
            elevation: 20,
            leading: InkWell(
              child: Icon(Icons.person),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return aboutme();
                }));
              },
            ),
            backgroundColor: Color(0xFFFFFF),
            centerTitle: true,
            title: Text('آیین نامه رانندگی 1401'),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(40, 45),
                    bottomRight: Radius.elliptical(40, 45),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Color(0xFF3C80F7), Color(0xFF1058D1)])),
            )));
  }
}
