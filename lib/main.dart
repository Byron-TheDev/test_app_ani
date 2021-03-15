import 'package:flutter/material.dart';
import 'package:test_app_ani/screens/first_screen.dart';
import 'package:test_app_ani/screens/score_page.dart';

import 'screens/quiz_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: FirstScreen(),
      routes: {
        FirstScreen.route: (context) => FirstScreen(),
        QuizPage.route: (context) => QuizPage(),
        ScorePage.route: (context) => ScorePage(),
      },
    );
  }
}
