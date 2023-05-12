import 'package:driving_licence_quiz/Screens/resultpage.dart';
import 'package:driving_licence_quiz/style/style.dart';
import 'package:flutter/material.dart';

class qustionpages extends StatefulWidget {
  qustionpages({Key? key, required this.getdata}) : super(key: key);
  var getdata;

  @override
  State<qustionpages> createState() => _qustionpagesState();
}

class _qustionpagesState extends State<qustionpages> {
//pagecontoral
  PageController? _controller = PageController(initialPage: 0);

  // seting the game vriable
  int showQuestionIndex = 0;
  bool lastquestio = false;
  bool isprseed = false;
  Color isTrue = Color(0xFFBCE29E);
  Color iswrong = Color(0xFFFF8787);
  Color bttnColor = Color(0xFFFFFFFF);
  Color isTrueicon = Colors.black;

  int score = 0;
  IconData blankcheck = Icons.check_box_outline_blank;
  IconData check = Icons.check_box;

  @override
  Widget build(BuildContext context) {
    showQuestionIndex = widget.getdata.length;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // appBar: AppBar(
          //   title: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text(
          //       ' تعداد پاسخ های درست  ${score}  از ${widget.getdata.length}   سوال ',
          //       textAlign: TextAlign.end,
          //       style: normaltext,
          //     ),
          //   ),
          //   centerTitle: true,
          // ),
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: PageView.builder(
              controller: _controller!,
              itemCount: widget.getdata.length,
              onPageChanged: (page) {
                setState(() {
                  isprseed = false;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              '  سوال  ${index + 1} از ${widget.getdata.length}',
                              style: titel,
                            ),
                          ),
                        ])),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(
                          image: AssetImage(
                              widget.getdata[index].imagenamenumber!),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.getdata[index].qusiion!,
                          style: normaltext,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    for (var i = 0;
                        i < widget.getdata[index].anwsers!.length;
                        i++)
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: MaterialButton(
                            elevation: 7,
                            shape: StadiumBorder(),
                            color: isprseed
                                ? widget.getdata[index].anwsers!.entries
                                        .toList()[i]
                                        .value
                                    ? isTrue
                                    : iswrong
                                : bttnColor,
                            onPressed: isprseed
                                ? () {}
                                : () {
                                    setState(() {
                                      isprseed = true;
                                    });
                                    if (widget.getdata[index].anwsers!.entries
                                        .toList()[i]
                                        .value) {
                                      score++;

                                      print("$score");
                                      setState(() {
                                        if (showQuestionIndex ==
                                            widget.getdata.length - 1) {
                                          lastquestio = true;
                                        }
                                      });
                                    }
                                  },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              width: double.infinity,
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Icon(
                                    check,
                                    color: isprseed
                                        ? widget.getdata[index].anwsers!.entries
                                                .toList()[i]
                                                .value
                                            ? isTrueicon
                                            : iswrong
                                        : bttnColor,
                                  ),
                                  Text(
                                      widget.getdata[index].anwsers!.keys
                                          .toList()[i],
                                      style: TextStyle(
                                          fontSize: 14.5,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.end
//                 style: TextStyle(fontSize: 14.5, fontStyle: FontStyle.italic),
                                      ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: isprseed
                          ? index + 1 == widget.getdata.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              resultpage(score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                    duration: Duration(microseconds: 900000),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  );
                                }
                          : null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Text(index + 1 == widget.getdata.length
                              ? 'see result'
                              : 'next'),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      )),
    );
  }
}
