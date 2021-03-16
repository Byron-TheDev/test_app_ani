import 'package:flutter/material.dart';
import 'package:test_app_ani/screens/quiz_screen.dart';
import 'package:test_app_ani/widgets/my_circle_widget.dart';

class FirstScreen extends StatelessWidget {
  static const route = 'First';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              height: size.height * .03,
            ),
            MyCircleWidget(
              text: 'Start',
              onPress: () {
                Navigator.pushReplacementNamed(context, QuizPage.route);
              },
            ),
            SizedBox(
              height: size.height * .12,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * .02, bottom: size.height * .03),
              padding: EdgeInsets.all(size.height * .031),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      width: size.width * .001, color: Colors.white)),
              child: Text(
                '(Rules) \n \nCorrect Answers +1 \nWrong Answers -1 ',
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
