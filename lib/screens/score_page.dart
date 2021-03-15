import 'package:flutter/material.dart';
import 'package:test_app_ani/screens/first_screen.dart';
import 'package:test_app_ani/widgets/buttons.dart';
import 'package:test_app_ani/widgets/my_circle_widget.dart';

class ScorePage extends StatelessWidget {
  static const route = 'ScorePage';
  final score = 0;
  @override
  Widget build(BuildContext context) {
    var argScore = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyCircleWidget(text: '$argScore'),
            Buttons(
              text: 'Restart',
              onPress: () {
                argScore = score;
                Navigator.pushReplacementNamed(context, FirstScreen.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
