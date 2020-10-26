import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 3;

  void _changingNumber() {
    leftNumber = Random().nextInt(6) + 1;
    rightNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
            ),
          ),
        ),
        body: Center(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _changingNumber();
                    });
                  },
                  child: Image.asset('assets/images/dice$leftNumber.png'),
                ),
              ),
              //   SizedBox(width: 10.0,)
              // ,
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _changingNumber();
                    });

                    // print('right button got pressed');
                  },
                  child: Image.asset('assets/images/dice$rightNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
