import 'package:flutter/material.dart'; //importing a built in file by flutter
import './quiz.dart';
import './result.dart';

void main() {
  runApp(
      MyApp()); //widget that needs to be displayed when app runs, it automatically calls build
} //void main() => runApp(MyApp());

class MyApp
    extends StatefulWidget //Stateless/Stateful class is a class provided by Material.dart
{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //_Classname turns that class from public to private
  } //This class is rebuilt when something changes

}

class _MyAppState
    extends State<MyApp> //State is a gneric class provided by material.dart
{
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Football', 'score': 10},
        {'text': 'Tennis', 'score': 5},
        {'text': 'Cricket', 'score': 3},
        {'text': 'Ludo', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0; //variables in a class are called properties
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex +
          1; //build function gets calles when setState()is created and value inside it is changed
    });

    print(_questionIndex); //making a function for onPressed
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override //decorater provided by dart, makes code bit clearer and cleaner,good practice
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Scaffold creates a base page design
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
