import 'package:flutter/material.dart';
import 'package:task1/login_screen.dart';
import 'package:task1/spash2.dart';

class Spash3 extends StatelessWidget {
  const Spash3({Key? key}) : super(key: key);


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

        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,

        child: Container(
          width: 430,
          height: 932,
          //color: Colors.blue,
          color: Color(0xFFEDFFF4),
          child: Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 25, top: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFEDFFF4),
                  border: Border.all(color: Color.fromRGBO(36, 211, 181, 0.25), width: 1),
                  shape: BoxShape.circle,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Spash2()));
                  },
                  child: Text(
                    '<',
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      height: 1.28,
                      color: Color(0xFF24D3B5),
                    ),
                  ),
                ),
              ),
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
                margin: EdgeInsets.only(left: 70, top: 153),
                width: 290,
                height: 301,
                child: Image.asset('star1.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 144, top: 577),
                width: 38,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xFF72E4A0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Hero(
                tag: 13,
                child: Container(
                  width: 38,
                  height: 4,
                  margin: EdgeInsets.only(left: 185, top: 577),
                  decoration: BoxDecoration(
                    color: Color(0xFF72E4A0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Hero(
                tag: 11,
                child: Container(
                  width: 59,
                  height: 4,
                  margin: EdgeInsets.only(left: 226, top: 577),
                  decoration: BoxDecoration(
                    color: Color(0xFF24D3B5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Container(
                width: 264,
                height: 38,
                margin: EdgeInsets.only(left: 55, top: 599),
                child: Text(
                  'Get amazing rewards',
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
                  'The rewards feature is designed to incentivize and encourage good savings habits among teens.',
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
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
