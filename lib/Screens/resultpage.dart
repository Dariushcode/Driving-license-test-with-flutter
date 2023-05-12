import 'package:driving_licence_quiz/style/style.dart';
import 'package:flutter/material.dart';

class resultpage extends StatefulWidget {
  resultpage(
    this.score, {
    Key? key,
  }) : super(key: key);

  final int score;

  @override
  State<resultpage> createState() => _resultpageState();
}

TextEditingController txd = TextEditingController();

class _resultpageState extends State<resultpage> {
  var ispassimage = '';
  var ispassed = false;
  var passimage = 'images/ui/pass.png';
  var failimage = 'images/ui/fail.png';
  var passtext = 'آفرین قبول شدی ';
  var failtext = 'عیب نداره دوباره تلاش کن  ';

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    var scoree = widget.score;
    var wrongquiz = 30 - widget.score;

    var scoretext = '${widget.score}';
    var wrongquiztext = '${wrongquiz}';
    return Scaffold(
      appBar: AppBar(
        title: Text('نتیجه ازمون'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image(
                image: AssetImage(scoree >= 26 ? passimage : failimage),
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            child: Text(
              scoree >= 26 ? passtext : failtext,
              style: scoree >= 26 ? truetextdark : wrongtextdark,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 5,
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          Expanded(
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            child: Text(
              'تعداد سوالات درست ',
              style: truetext,
            ),
          ),
          Expanded(
            child: Text(
              scoretext,
              style: truetext,
            ),
          ),
          Expanded(
            child: Text(
              'تعداد سوالات غلط  ',
              style: wrongtext,
            ),
          ),
          Expanded(
            child: Text(
              '$wrongquiztext',
              style: wrongtext,
            ),
          ),
        ],
      ),
    );
  }
}
