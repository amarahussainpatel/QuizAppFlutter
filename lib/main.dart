import 'package:flutter/material.dart';
import 'package:quizapp/screens/WelcomeScreen.dart';
import 'package:quizapp/screens/quiz_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QUIZ APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizCard(),
    );
  }
  }