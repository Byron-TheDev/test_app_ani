import 'package:flutter/material.dart';

class MyCircleWidget extends StatelessWidget {
  final String text;
  final Function onPress;
  MyCircleWidget({
    @required this.text,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 60,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
