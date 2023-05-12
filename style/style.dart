import 'package:flutter/material.dart';

ButtonStyle button1 = ElevatedButton.styleFrom(
    backgroundColor: Colors.cyanAccent,
    shadowColor: Colors.amber,
    elevation: 40,
    textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));

ButtonStyle button2 = ElevatedButton.styleFrom(backgroundColor: Colors.cyan);

TextStyle normaltext = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
TextStyle smailtext = TextStyle(
  fontSize: 15,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle bigtext = TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle titel = TextStyle(
  fontSize: 17,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle truetext = TextStyle(
  fontSize: 22,
  color: Colors.greenAccent,
  fontWeight: FontWeight.bold,
);
TextStyle wrongtext = TextStyle(
  fontSize: 22,
  color: Colors.redAccent,
  fontWeight: FontWeight.bold,
);

TextStyle truetextdark = TextStyle(
  fontSize: 30,
  color: Colors.greenAccent[700],
  fontWeight: FontWeight.bold,
);
TextStyle wrongtextdark = TextStyle(
  fontSize: 30,
  color: Colors.redAccent[700],
  fontWeight: FontWeight.bold,
);
