import 'package:flutter/material.dart';
import 'quiz_brain.dart';

Quizbrain quizbrain=Quizbrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // late int score;
  //
  // List<Widget> scorekeeper=[];
  // List<String> question=[
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  //
  // ];
  // int num=0;
//
// Question q1=Question(q: 'You can lead a cow down stairs but not up stairs.', a: false);
// Question q2=Question(q: 'Approximately one quarter of human bones are in the feet.', a: true);
// Question q3=Question(q: 'A slug\'s blood is green.', a: true);
  // get scorekeeper => null;

  int questionnumber=0;


  @override
  Widget build(BuildContext context) {


    return Column(


      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizbrain.questionbank[questionnumber].questionText,

                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {

                setState(() {
                  Text(
                    quizbrain.questionbank[questionnumber].questionText,
                  );
                });

                 bool currrectans=quizbrain.questionbank[questionnumber].questionsans;
                 if(currrectans==true)
                   print("user got it right");
                 else(
                 print("user got it wrong")
                   );
                 questionnumber=questionnumber+1;

                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                setState(() {
                  Text(
                    quizbrain.questionbank[questionnumber].questionText,
                  );
                });


                 bool currrectans=quizbrain.questionbank[questionnumber].questionsans;
                    if(currrectans==false)
                      print("user got it right");
                    else(
                        print("user got it wrong")
                      );
                      questionnumber=questionnumber+1;
              },
            ),
          ),
        ),
        // Row(
        //   children: scorekeeper,
        // ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
