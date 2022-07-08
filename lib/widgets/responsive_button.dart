import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResponsiveButton extends StatelessWidgett {
  bool? isResponsive;
  double? width;

  const ResponsiveButton({Key? key, this.width, this.isResponsive = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      child: Row(
        children: [
          SvgPicture.string('''<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
  <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.707l-3-3a1 1 0 00-1.414 1.414L10.586 9H7a1 1 0 100 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z" clip-rule="evenodd" />
</svg>''')
        ],
      ),
    );
  }
}
