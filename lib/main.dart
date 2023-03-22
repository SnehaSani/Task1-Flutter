import 'package:flutter/material.dart';
import 'package:task1/home_screen.dart';
import 'package:task1/start_screen.dart';
import 'package:task1/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartScreen()
        //home: Card1()
    );
  }
}