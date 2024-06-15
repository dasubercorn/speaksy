import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'login.dart';

class Scene1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double screenHeight = MediaQuery.of(context).size.height;
    double verticalPadding = screenHeight - (530 * fem); // Adjust 600 as needed
    return SingleChildScrollView( // Wrap with Expanded
    physics: NeverScrollableScrollPhysics(),
      child: Container(
        width: double.infinity,
        child: Container(
          // frame5Phs (19:470)
          padding: EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, verticalPadding),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0 * fem, 4 * fem),
                blurRadius: 2 * fem,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupt7rfSAM (PgZEQga9iUfASktWbCT7rF)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                width: double.infinity,
              ),
              Container(
                // vectortpy (19:480)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 290 * fem, 70 * fem),
                child: Container(
                  width: 22 * fem,
                  height: 23 * fem,
                ),
              ),
              Container(
                // hellouserhowmayihelpyouNk9 (19:923)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26 * fem),
                constraints: BoxConstraints(
                  maxWidth: 239 * fem,
                ),
                child: Text(
                  'SPEAKSY',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                // logomakr7nheie1qNq (19:479)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 1 * fem),
                width: 139 * fem,
                height: 139 * fem,
                child: Image.asset(
                  'assets/page-1/images/logomakr-7nheie-1-zZf.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // autogroupadep9uK (PgZEa6U8nLBJVQhsugaDeP)
                width: double.infinity,
                height: 211 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // singlebuttonMvq (19:862)
                      left: 0 * fem,
                      top: 132 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 340 * fem,
                          height: 79 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff39e5f3),
                          ),
                          child: Container(
                            // lighttQy (19:863)
                            padding: EdgeInsets.fromLTRB(16 * fem, 17 * fem, 16 * fem, 15 * fem),
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Container(
                              // primarypZX (19:866)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6 * fem),
                                gradient: LinearGradient(
                                  begin: Alignment(1, 0),
                                  end: Alignment(-1, 0),
                                  colors: <Color>[Color(0xff39e5f3), Color(0xff39e5f3)],
                                  stops: <double>[0, 1],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x281d74e9),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 4 * fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigate to the LoginPage when the button is pressed
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LoginPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent, // Set the button's background color to transparent
                                      elevation: 0, // Remove elevation
                                    ),
                                    child: Text(
                                      'Let’s Speak!',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2890625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
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