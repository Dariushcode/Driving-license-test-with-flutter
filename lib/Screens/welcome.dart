import 'package:driving_licence_quiz/Screens/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  gradient: LinearGradient(colors: [
                    Color(0xFFEFF5FF),
                    Color(0xFFEFF5FF),
                  ], begin: Alignment.topCenter, end: Alignment.bottomLeft),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(''),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.local_police),
                          Text(
                            " گواهینامه من",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.local_police),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Image(
                        width: double.infinity,
                        image: AssetImage('images/ui/home.png'),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 35,
                      ),
                    ),
                    Expanded(
                        child: SpinKitFoldingCube(
                      color: Colors.cyanAccent,
                    )),
                    Expanded(
                      child: Image(
                        width: double.infinity,
                        image: AssetImage('images/Group 2.png'),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 155,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' :)  با دنده سنگین حرکت کنید',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return firstpageApp();
                })),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(40, 45)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xFF3C80F7),
                              Color(0xFF1058D1)
                            ])),
                    child: Center(
                      child: Text(
                        'برو بریم   ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
