import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  // variabel
  double size;
  final String text;
  final Color color;

  // class untuk memanggil
  AppLargeText({Key? key, required this.text, this.size = 30, this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
        ));
  }
}
