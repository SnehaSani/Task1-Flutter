import 'package:flutter/material.dart';
import 'package:task1/otp_screen.dart';
import 'package:task1/spash3.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                        .push(MaterialPageRoute(builder: (context) => Spash3()));
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
              Container(
                margin: EdgeInsets.only(left: 123, top: 110),
                width: 184,
                height: 76,
                child: Image.asset('bankly-logo.png'),
              ),
              Container(
                width: 277,
                height: 29,
                margin: EdgeInsets.only(left: 25, top: 250),
                child: Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    height: 1, // line-height equivalent
                    color: Color(0xFF636F8C),
                  ),
                  textAlign: TextAlign.left, // text-align equivalent
                ),
              ),
              Container(
                width: 380,
                height: 14,
                margin: EdgeInsets.only(left: 25, top: 283),
                child: Text(
                  'Make sure to provide your own number.',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w400,
                    fontSize: 12, // line-height equivalent
                    color: Color(0xFF636F8C),
                  ),
                  textAlign: TextAlign.left, // text-align equivalent
                ),
              ),
              Container(
                width: 380,
                height: 65,
                margin: EdgeInsets.only(left: 25, top: 330,),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(144, 158, 192, 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    '+91 00000 00000',
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      height: 1, // line-height equivalent
                      color: Color.fromRGBO(144, 158, 192, 0.3),
                    ),
                    textAlign: TextAlign.left, // text-align equivalent
                  ),
                ),
              ),
              Container(
                width: 380,
                height: 38,
                margin: EdgeInsets.only(left: 25, top: 408),
                child: Text(
                  'By continuing, you agree to our Terms of use and Privacy policy',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.26, // line-height equivalent
                    color: Color(0xFF909EC0),
                  ),
                  textAlign: TextAlign.left, // text-align equivalent
                ),
              ),

              Hero(
                tag: 'next',
                child: Container(
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtpScreen()));
                            // Navigator.push(
                            //   context,
                            //   PageRouteBuilder(
                            //     transitionDuration: Duration(seconds: 2),
                            //     pageBuilder: (_, __, ___) => OtpScreen(),
                            //   ),
                            // );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 99),
                            child: Text(
                              'Get OTP',
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

              ),
            ],
          ),
        ),
      ),
    );
  }
}
