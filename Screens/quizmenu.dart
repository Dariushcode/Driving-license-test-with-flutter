import 'package:driving_licence_quiz/Datta/getqiuz.dart';
import 'package:driving_licence_quiz/Screens/quizpages.dart';
import 'package:flutter/material.dart';

class Quizmenu extends StatelessWidget {
  Quizmenu({
    Key? key,
    this.title,
    this.img,
    this.index,
    this.index2,
    this.index3,
    this.index4,
    this.index5,
    this.getdata,
    this.getdata2,
    this.getdata3,
    this.getdata4,
    this.getdata5,
  }) : super(key: key);

  var title;
  var img;
  var index;
  var index2;
  var index3;
  var index4;
  var index5;
  var getdata;
  var getdata2;
  var getdata3;
  var getdata4;
  var getdata5;

  var selectionqiuz = getquiz().getdataqiuz;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                elevation: 20,
                leading: Icon(Icons.person),
                backgroundColor: Color(0xFFFFFF),
                centerTitle: true,
                title: Text('$title'),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(40, 45),
                        bottomRight: Radius.elliptical(40, 45),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFF3C80F7),
                            Color(0xFF1058D1)
                          ])),
                )),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                getinkwel(context, getdata, index, img),
                getinkwel(context, getdata2, index2, img),
                getinkwel(context, getdata3, index3, img),
                getinkwel(context, getdata4, index4, img),
                getinkwel(context, getdata5, index5, img),
                SizedBox(
                  height: 20,
                ),
              ]),
            )));
  }
}

Widget getinkwel(context, var getdata, var index, var img) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return qustionpages(
          getdata: getdata,
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Text(
              'آزمون شماره ${index}',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
            Image(
              image: AssetImage('images/ui/$img.png'),
            ),
          ],
        ),
      ),
    ),
  );
}
