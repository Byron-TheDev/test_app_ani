import 'package:flutter/material.dart';
import 'package:test_app_ani/screens/quiz_screen.dart';
import 'package:test_app_ani/widgets/my_circle_widget.dart';

class FirstScreen extends StatelessWidget {
  static const route = 'First';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                'Easy Quiz',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, QuizPage.route);
              },
              child: MyCircleWidget(
                text: 'Start',
                onPress: () {
                  Navigator.pushReplacementNamed(context, QuizPage.route);
                },
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 30),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                '(Score Rules) \n \nCorrect Answers +1 \nWrong Answers -1 ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
