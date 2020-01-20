import'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,   // container takes all the space available on the screen
     child:RaisedButton(
              color:Colors.blue,   //Colors is just like a group of pre-defined colors
              textColor:Colors.white,
              child: Text(answerText),
              onPressed: selectHandler, //Passing a pointer to onPressed
            ), 
    );
  }
}