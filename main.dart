import 'package:flutter/material.dart';
import 'package:project_course/result.dart';
import './quiz.dart';
import './result.dart';

/*void main(){
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _question = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'what\'s your favourite pet?',
      'answers': ['Rabbit', 'Dog', 'Cat', 'Tiger'],
    },
    {
      'questionText': 'who\'s your favourite human?',
      'answers': ['nonso', 'nonso', 'nonso'],
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _question.length) {
      print('we have more questions');
    } else {
      print('no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'my first app',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(),
      ),
    );
  }
}
