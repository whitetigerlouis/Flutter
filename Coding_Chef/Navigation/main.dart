import 'package:flutter/material.dart';
import 'package:test_app/ScreenA.dart';
import 'package:test_app/ScreenB.dart';
import 'package:test_app/ScreenC.dart';

void main() => runApp(MyApp());

// custom widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}
