import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/home_screen.dart';

var seen='4737 9618 4974 2489';
var unseen='**** **** **** 2489';
bool passwordVisible = false;


class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  void toggle() {
    setState(() {
      passwordVisible = !passwordVisible;
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
          //color: Colors.blue,
          color: Color(0xFF1E1E1E),
          child: Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 25, top: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      '<',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                width: 256,
                height: 38,
                left: 88,
                top: 115,
                child: Row(
                  children: [
                    Text(
                      'Your',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        height: 1.26, // line-height equivalent in Flutter
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      ' Bankly ',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        height: 1.26, // line-height equivalent in Flutter
                        color: Color(0xFF24D3B5),
                      ),
                    ),
                    Text(
                      'Card',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        height: 1.26, // line-height equivalent in Flutter
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 380,
                height: 255.24,
                margin: EdgeInsets.only(left: 25, top: 188.71),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF909EC0),
                      Color(0xFF24D3B5),
                    ],
                    stops: [
                      0.0529,
                      1.1864,
                    ],
                    transform: GradientRotation(258.36 * 3.14 / 180), // Convert degrees to radians
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 15.54,
                margin: EdgeInsets.only(
                  left: 45,
                  top: 208.68,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Balance',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.17, // line-height equivalent in Flutter
                    color: Color(0xFFE7E7E7),
                  ),
                ),
              ),
              Container(
                width: 117,
                height: 26.63,
                margin: EdgeInsets.only(
                  left: 45,
                  top: 224.22,
                ),
                alignment: Alignment.center,
                child: Text(
                  '₹234,300.32',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    height: 1.2, // line-height equivalent in Flutter
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                width: 22,
                height: 32,
                margin: EdgeInsets.only(
                  left: 361,
                  top: 208.68,
                ),
                child: Image.asset('bankly-icon.png'),
              ),
              Container(
                width: 29,
                height: 29,
                margin: EdgeInsets.only(left: 330, top: 290,),
                child: IconButton(
                  icon: Icon(
                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    toggle();
                  },
                ),
              ),
              Container(
                width: 286,
                height: 32,
                margin: EdgeInsets.only(
                  left: 45,
                  top: 300,
                ),
                child: Text(
                    passwordVisible ? seen : unseen,
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    height: 29/24, // line-height equivalent in Flutter
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                width: 121,
                height: 15.5,
                margin: EdgeInsets.only(
                  left: 45,
                  top: 377,
                ),
                child: Text(
                  'Card holder name',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 14/12, // line-height equivalent in Flutter
                    color: Color(0xFFE7E7E7),
                  ),
                ),
              ),
              Container(
                width: 83,
                height: 15.5,
                margin: EdgeInsets.only(
                  left: 232,
                  top: 375,
                ),
                child: Text(
                  'Expiry date',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 14/12, // line-height equivalent in Flutter
                    color: Color(0xFFE7E7E7),
                  ),
                ),
              ),
              Container(
                width: 138,
                height: 26.6,
                margin: EdgeInsets.only(
                  left: 45,
                  top: 393,
                ),
                child: Text(
                  'John Dahmer',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    height: 24/20, // line-height equivalent in Flutter
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                width: 63,
                height: 26.6,
                margin: EdgeInsets.only(
                  left: 232,
                  top: 393,
                ),
                child: Text(
                  '02/30',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    height: 24/20, // line-height equivalent in Flutter
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                width: 380,
                height: 57,
                margin: EdgeInsets.only(
                  left: 25,
                  top: 569,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF292929),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'How to use my card?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      height: 29/24, // line-height equivalent in Flutter
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Container(
                width: 380,
                height: 57,
                margin: EdgeInsets.only(
                  left: 25,
                  top: 643,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF292929),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Order?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      height: 29/24, // line-height equivalent in Flutter
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Container(
                width: 380,
                height: 57,
                margin: EdgeInsets.only(
                  left: 25,
                  top: 717,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF292929),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Transactions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      height: 29/24, // line-height equivalent in Flutter
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Positioned(
                width: 237,
                height: 17,
                left: 97,
                top: 801,
                child: Row(
                  children: [
                    Text(
                      'Already have a bankly card? ',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 17/14, // line-height equivalent in Flutter
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      'Activate',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 17/14, // line-height equivalent in Flutter
                        color: Color(0xFF24D3B5
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
