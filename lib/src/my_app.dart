import 'package:flutter/material.dart';
import 'package:test_me_first/src/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.deepPurpleAccent),
          headline2: TextStyle(color: Colors.deepPurpleAccent),
          bodyText2: TextStyle(color: Colors.deepPurpleAccent, fontSize: 40),
          subtitle1: TextStyle(color: Colors.pinkAccent),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
