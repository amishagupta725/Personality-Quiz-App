import 'package:covid_tacker/datasource.dart';
import 'package:flutter/material.dart';
class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs",style: TextStyle(color: Colors.white),),

      ),
      body: ListView.builder(
        itemCount: DataSource.questionAnswers.length,
        itemBuilder: (context,index){
        return ExpansionTile(title: Text(DataSource.questionAnswers[index]['question'],style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(DataSource.questionAnswers[index]['answer']),
            ),
        ],);
      })
    );
  }
}
