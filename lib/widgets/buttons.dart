import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function onPress;
  final String text;
  Buttons({
    this.onPress,
    this.text,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blue),
      child:  Text(
          '$text',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
