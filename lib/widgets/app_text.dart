import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  // variabel
  double size;
  final double? hText;
  final double? sText;
  String text;
  final Color color;

  // class untuk memanggil
  AppText({
    Key? key,
    required this.text,
    this.size = 16,
    this.color = Colors.black,
    this.hText,
    this.sText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: 'Raleway',
          height: hText,
          textBaseline: sText,
        ));
  }
}
