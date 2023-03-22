import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task1/spash1.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Spash1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        curve: Curves.easeOut,
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: 1),
        builder: (context,double value, child) {
          return Opacity(
            opacity: value,
            child: child,
          );
        },

        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          width: 430,
          height: 932,
          color: Colors.white,

          child: Stack(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  // width: 528,
                  // height: 419,
                  margin: EdgeInsets.only(left: 52, top: 0,),
                  child: Image.asset('Ellipse1.png')),
              Container(
                  width: 239,
                  height: 96,
                  margin: EdgeInsets.only(left: 96, top: 418,),
                  child: Image.asset('bankly-logo.png')),
              Container(
                  // width: 528,
                  // height: 419,
                  margin: EdgeInsets.only(left: 0, top: 730,),
                  child: Image.asset('Ellipse2.png')),
            ],
          ),
        ),
      ),
    );
  }
}
