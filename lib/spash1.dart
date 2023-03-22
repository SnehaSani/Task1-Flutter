import 'package:flutter/material.dart';
import 'package:task1/login_screen.dart';
import 'package:task1/spash2.dart';

class Spash1 extends StatelessWidget {
  const Spash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TweenAnimationBuilder(
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
            //color: Colors.blue,
            color: Color(0xFFEDFFF4),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 332, top: 29),
                    width: 73,
                    height: 33,
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6FFF5),
                      border: Border.all(
                        color: Color.fromRGBO(36, 211, 181, 0.25),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xFF24D3B5),
                        fontFamily: 'Sk-Modernist',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 68, top: 182),
                  width: 294,
                  height: 267,
                  child: Image.asset('spash1.png'),
                ),
                Hero(
                  tag: 11,
                  child: Container(
                    margin: EdgeInsets.only(left: 144, top: 577),
                    width: 59,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Color(0xFF24D3B5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Hero(
                  tag: 12,
                  child: Container(
                    width: 38,
                    height: 4,
                    margin: EdgeInsets.only(left: 206, top: 577),
                    decoration: BoxDecoration(
                      color: Color(0xFF72E4A0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  width: 38,
                  height: 4,
                  margin: EdgeInsets.only(left: 247, top: 577),
                  decoration: BoxDecoration(
                    color: Color(0xFF72E4A0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 264,
                  height: 38,
                  margin: EdgeInsets.only(left: 83, top: 599),
                  child: Text(
                    'Track your budget',
                    textAlign: TextAlign.center ,
                    style: TextStyle(
                      color: Color(0xFF005345),
                      fontFamily: 'Sk-Modernist',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: 380,
                  height: 88,
                  margin: EdgeInsets.only(left: 25, top: 655),
                  child: Text(
                    'The budget feature allows teens to track their spending, set savings goals, and receive educational resources to help them understand important financial concepts.',
                    textAlign: TextAlign.center ,
                    style: TextStyle(
                      color: Color(0xFF005345),
                      fontFamily: 'Sk-Modernist',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              Container(
                width: 333,
                height: 65,
                margin: EdgeInsets.only(left: 48, top: 795),
                decoration: BoxDecoration(
                  color: Color(0xFF24D3B5),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(36, 211, 181, 0.2),
                      offset: Offset(0, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Spash2()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 99),
                    child: Text(
                      'Next  >',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
    );
  }
}
