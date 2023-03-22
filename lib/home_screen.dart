import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task1/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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

        child: SingleChildScrollView(
          child: Container(
            width: 430,
            height: 1874,
            color: Color(0xFFFFFFFF),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 430,
                      height: 418,
                      margin: EdgeInsets.only(left: 0, top: 0),
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                    Container(
                      width: 262,
                      height: 0,
                      margin: EdgeInsets.only(left: 84, top: 230),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF424242), width: 1),
                      ),
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      margin: EdgeInsets.only(left: 363, top: 37),
                      child: Image.asset('notification-icon.png'),
                    ),
                    Container(
                      width: 397,
                      height: 198,
                      margin: EdgeInsets.only(left: 18, top: 257),
                      child: Image.asset('Rectangle.png'),
                    ),
                    Container(
                      width: 149,
                      height: 48,
                      margin: EdgeInsets.only(left: 25, top: 31),
                      child: Center(
                        child: Text(
                          "Good Afternoon John Dahmer",
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            height: 24/20,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 187,
                      height: 38,
                      margin: EdgeInsets.only(left: 122, top: 118),
                      alignment: Alignment.center,
                      child: Text(
                        '₹234,300.32',
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          height: 1.2,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 98,
                      height: 19,
                      margin: EdgeInsets.only(left: 166, top: 104),
                      alignment: Alignment.center,
                      child: Text(
                        'Total Balance',
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          height: 1.2,
                          color: Color(0xFFD9D9D9),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 207,
                      height: 31,
                      margin: EdgeInsets.only(left: 111, top: 178),
                      child: Image.asset('icons.png'),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 430,
                      height: 1536,
                      margin: EdgeInsets.only(left: 0, top: 352),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      width: 176,
                      height: 24,
                      margin: EdgeInsets.only(left: 25, top: 499),
                      child: Text(
                        'Your rewards',
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          height: 24/20,
                          color: Color(0xFF636F8C),
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      height: 137,
                      margin: EdgeInsets.only(left: 25, top: 527),
                      child: Image.asset('star.png'),
                    ),
                    Container(
                      width: 380,
                      height: 272,
                      margin: EdgeInsets.only(left: 25, top: 682),
                      child: Image.asset('categories.png'),
                    ),
                    Container(
                      width: 380,
                      height: 264,
                      margin: EdgeInsets.only(left: 25, top: 1003),
                      child: Image.asset('banner.png'),
                    ),
                    Container(
                      width: 180,
                      height: 24,
                      margin: EdgeInsets.only(left: 25, top: 1311),
                      child: Text(
                        'Use Bankly and get',
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          height: 24/20,
                          color: Color(0xFF636F8C),
                        ),
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(left: 25, top: 1370),
                        child: Row(
                          children: [
                            Container(
                              width: 123,
                              height: 147,
                              child: Image.asset('banner-slider1.png'),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 123,
                              height: 147,
                              child: Image.asset('banner-slider2.png'),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 123,
                              height: 147,
                              child: Image.asset('banner-slider1.png'),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 123,
                              height: 147,
                              child: Image.asset('banner-slider2.png'),
                            ),
                            SizedBox(width: 15,),
                          ],
                        ),
                      ),
                    ),


                    Container(
                      width: 380,
                      height: 191,
                      margin: EdgeInsets.only(left: 25, top: 1586),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF24D3B5),
                            Color(0xFF72E4A0),
                          ],
                          stops: [
                            0.00,
                            1.00,
                          ],
                          transform: GradientRotation(180 * 3.14 / 180), // Convert degrees to radians
                        ),
                      ),
                    ),
                    Container(
                      width: 220,
                      height: 65,
                      margin: EdgeInsets.only(left: 45, top: 1598),
                      child: Text(
                        'Bring your card at home only for 299/-',
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          height: 24/20,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    Container(
                      width: 238,
                      height: 238,
                      margin: EdgeInsets.only(left: 163, top: 1606),
                      child: Image.asset('cards.png'),
                    ),
                    Container(
                      width: 121,
                      height: 41,
                      margin: EdgeInsets.only(left: 45, top: 1714),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:10.0,left: 20),
                        child: Text(
                          'Book now',
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            height: 19/16,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                      ),
                    ),


                    Container(
                      width: 76,
                      height: 76,
                      margin: EdgeInsets.only(left: 177, top: 295),
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Card1()));
                        },
                        child: Image.asset('Vector.png'),
                      ),
                    ),

                    Container(
                      width: 188,
                      height: 54,
                      margin: EdgeInsets.only(left: 25, top: 401),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(color: Color(0xFF24D3B5), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Card1()));
                        },
                        child: Text(
                          'Request',
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 19/16,
                            color: Color(0xFF24D3B5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 187,
                      height: 54,
                      margin: EdgeInsets.only(left: 218, top: 401),
                      decoration: BoxDecoration(
                        color: Color(0xFF24D3B5),
                        border: Border.all(color: Color(0xFF24D3B5), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () {
                        },
                        child: Text(
                          'History',
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 19/16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
