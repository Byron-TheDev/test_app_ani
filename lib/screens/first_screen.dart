import 'package:flutter/material.dart';
import 'package:test_app_ani/screens/quiz_screen.dart';
import 'package:test_app_ani/widgets/my_circle_widget.dart';

class FirstScreen extends StatelessWidget {
  static const route = 'First';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:MyCircleWidget(
                  text: 'Start',
                  onPress: () {
                    Navigator.pushReplacementNamed(context, QuizPage.route);
                  },
                ),),);
  }
}
