import 'package:flutter/material.dart';
import 'package:test_app_ani/screens/score_page.dart';
import 'package:test_app_ani/widgets/buttons.dart';

class QuizPage extends StatefulWidget {
  static const route = 'QuizPage';
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
    with SingleTickerProviderStateMixin {
  var score = 0;
  Animation<double> animation;
  AnimationController controller;
  int index = 0;
  var questionsAns = [
    {'quest': '2 + 2 = 4', 'ans': true},
    {'quest': '3 + 2 = 4', 'ans': false},
    {'quest': '2 + 3 = 5', 'ans': true},
    {'quest': '2 + 6 = 4', 'ans': false},
  ];

  @override
  void didChangeDependencies() {
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: MediaQuery.of(context).size.width)
        .animate(controller);

    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, ScorePage.route,
            arguments: score);
      }
    });
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void buttonFunction(bool trueOrFalse) {
    setState(() {
      if (index >= questionsAns.length - 1) {
        questionsAns[index]['ans'] != trueOrFalse ? score = score : score += 1;
        controller.stop();
        Navigator.pushReplacementNamed(context, ScorePage.route,
            arguments: score);
      } else if (questionsAns[index]['ans'] == trueOrFalse) {
        index++;
        controller.reset();
        controller.forward();
        score += 1;
      } else if (questionsAns[index]['ans'] != trueOrFalse) {
        score <= 0 ? score = 0 : score -= 1;

        Navigator.pushReplacementNamed(context, ScorePage.route,
            arguments: score);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            margin: EdgeInsets.only(top: 50),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                color: Colors.red,
                height: size.height,
                width: animation.value,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: size.height,
              width: size.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${questionsAns[index]['quest']}',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonsWidget(
                          onPress: () {
                            buttonFunction(true);
                          },
                          text: 'True',
                        ),
                        ButtonsWidget(
                          onPress: () {
                            buttonFunction(false);
                          },
                          text: 'False',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
