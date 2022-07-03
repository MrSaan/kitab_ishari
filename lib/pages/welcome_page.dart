import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/widgets/app_large_text.dart';
import 'package:helloworld/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "Introduction.png",
    "welcome-doa.jpg",
    "welcome-jamaah.jpg",
    "welcome-tower.jpg",
  ];

  //var blur image
  double _sigmaX = 0.3; // from 0-10
  double _sigmaY = 0.3; // from 0-10
  double _opacity = 0.3; // from 0-1.0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/" + images[index]), fit: BoxFit.cover)),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                  child: Container(
                    color: Colors.black.withOpacity(_opacity),
                    padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          AppLargeText(text: "Baca", color: Colors.white),
                          AppText(text: "Shalawat", color: Colors.white, size: 25),
                          SizedBox(height: 20),
                          Container(
                              width: 300,
                              child: AppText(
                                text: "Dimana saja dan kapan saja, cukup dalam genggaman Anda, ke-utamaan dan keberkahan shalawat senantiasa tercurahkan kepada Anda sekalian",
                                color: Colors.white,
                                size: 14,
                                hText: 1.5,
                                sText: 1,
                              ))
                        ])
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
