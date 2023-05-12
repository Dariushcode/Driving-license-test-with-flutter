// import 'package:driving_licence_quiz/Datta/qustions.dart';
// import 'package:driving_licence_quiz/Screens/resultpage.dart';
// import 'package:driving_licence_quiz/style/style.dart';
// import 'package:flutter/material.dart';
//
// class qustionpage extends StatefulWidget {
//   qustionpage({Key? key, required this.getdata}) : super(key: key);
//   var getdata;
//
//   @override
//   State<qustionpage> createState() => _qustionpageState();
// }
//
// qustion? selectedQusetion;
//
// ////////////////////////////////////////////////////////////////
// int showQuestionIndex = 0;
// bool lastquestio = false;
// int correctAnwesres = 0;
//
// class _qustionpageState extends State<qustionpage> {
//   Widget getOptionlist(int index) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       padding: const EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       child: ListTile(
//         title: Padding(
//           padding: const EdgeInsets.all(0.0),
//           child: Wrap(
//             alignment: WrapAlignment.end,
//             children: [
//               Text(
//                 selectedQusetion!.anwserslist![index],
//                 textAlign: TextAlign.end,
//                 style: TextStyle(fontSize: 14.5, fontStyle: FontStyle.italic),
//               ),
//               Icon(Icons.check_box_outline_blank),
//             ],
//           ),
//         ),
//         onTap: () {
//           if (selectedQusetion!.corrctAnwsers == index) {
//             print('correctt anwsers');
//             correctAnwesres++;
//           } else {
//             print('wrong');
//           }
//           ;
//           setState(() {
//             if (showQuestionIndex == widget.getdata.length - 1) {
//               lastquestio = true;
//             }
//             if (showQuestionIndex < widget.getdata.length - 1) {
//               showQuestionIndex++;
//             }
//           });
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     selectedQusetion = widget.getdata[showQuestionIndex];
//     String QusiztionimageIndex =
//         widget.getdata[showQuestionIndex].imagenamenumber!;
//     ///////////////////////////////////////////////////////////////////
//     int appbarquizcount = showQuestionIndex + 1;
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '  سوال  $appbarquizcount از ${widget.getdata.length}',
//             textAlign: TextAlign.end,
//             style: normaltext,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Image(
//                 height: 200,
//                 width: 450,
//                 image: AssetImage('$QusiztionimageIndex'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Text(
//                 selectedQusetion!.quistionTitle!,
//                 style: smailtext,
//                 textAlign: TextAlign.end,
//               ),
//             ),
//             SizedBox(
//               height: 7,
//             ),
//             ...List.generate(
//               4,
//               (index) => getOptionlist(index),
//             ),
//             if (lastquestio)
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) {
//                         return resultpage(
//                           correctAnwesres: correctAnwesres,
//                         );
//                       }),
//                     );
//                   },
//                   child: Text('result')),
//           ],
//         ),
//       ),
//     );
//   }
// }
