import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_me_first/src/custom-hook/timer_hook.dart';

class TestHookApp extends StatelessWidget {
  const TestHookApp({super.key});

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
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Test my hook"),
          ),
          body: const TestHook()),
    );
  }
}

class TestHook extends HookWidget {
  const TestHook({super.key});

  @override
  Widget build(BuildContext context) {
    final timer = useInfiniteTimer(context);
    return Center(child: Text("$timer"));
  }
}
