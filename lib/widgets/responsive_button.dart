import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResponsiveButton extends StatelessWidget {
  // variabel
  double? lebar;
  bool? isResponsive;
  final String dogUrl = 'https://www.svgrepo.com/show/2046/dog.svg';

  // class untuk memanggil
  ResponsiveButton({Key? key, this.lebar, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lebar,
      height: 60,
      child: Row(
        children: [
          SvgPicture.network(
            dogUrl,
            placeholderBuilder: (context) => CircularProgressIndicator(),
            height: 128.0,
          ),
        ],
      ),
    );
  }
}
