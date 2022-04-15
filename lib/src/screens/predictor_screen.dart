import 'dart:math';
import 'package:flutter/material.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final result = PhraseOptions();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(children: [
        Expanded(
            flex: 4,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('Call Me... Maybe?',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 30,
                        color: Colors.blueGrey)))),
        randomPhrasePicker(),
        Expanded(
            flex: 4,
            child: Text('${result.getPhrase}',
                style: TextStyle(
                    fontFamily: 'Rubik', fontSize: 25, color: Colors.blueGrey)))
      ]),
    );
  }

  Widget randomPhrasePicker() {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                result.randomOption();
              });
            },
            child: Center(
              child: Text('I have what you are looking for. Answers?  Tap Here!',
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 25,
                      color: Colors.blue[500])),
            ),
          ),
        ),
      ),
    );
  }
}

class PhraseOptions {
  final Random random = Random();
  var phraseList = [
    'For Sure!',
    'Try again later.',
    'Not likely.',
    'Who knows? Ask me again!.',
    'Most Certainly',
    'hmmmm. I think .....  It is looking favorable',
    'Sometime soon.. Or maybe not at all.',
    'A thousands times YES!.'
  ];

  var result = "For Sure!";
  void randomOption() {
    int randval = random.nextInt(phraseList.length);
    result = phraseList[randval];
  }

  String? get getPhrase => result;
}
