import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/misc/colors.dart';

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
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          children: [
            Image.asset("assets/images/arrow-right.png"),
          ],
        ));
  }
}
