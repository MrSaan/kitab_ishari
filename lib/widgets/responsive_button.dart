import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResponsiveButton extends StatelessWidget {
  // variabel
  double? lebar;
  bool? isResponsive;

  // class untuk memanggil
  ResponsiveButton({Key? key, this.lebar, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: lebar,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green[900],
        ));
  }
}
