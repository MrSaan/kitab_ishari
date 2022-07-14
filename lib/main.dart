import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/navpages/main_pages.dart';
import 'package:helloworld/pages/welcome_page.dart';

void main() => runApp(MyApp());

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Scroll behaviour
        scrollBehavior: MyCustomScrollBehavior(),
        // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: MainPages();
  }
}
