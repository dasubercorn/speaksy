import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'frame-1.dart';
import 'FileListScreen.dart';
import 'banner.dart';
import 'tts.dart';

class Scene2 extends StatelessWidget {
  final String username;

  Scene2({required this.username});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              title: Text(''),
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // frame5Phs (19:470)
                    padding: EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 225 * fem),
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
                          // hellouserhowmayihelpyouNk9 (19:923)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 239 * fem,
                          ),
                          child: Text(
                            'Hello, $username!\nHow may I help you?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Colors.black,
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
                                // singlebuttontru (19:848)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SpeechScreen()),
                                    );
                                  },
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
                                      // lightbWR (19:849)
                                      padding: EdgeInsets.fromLTRB(16 * fem, 17 * fem, 16 * fem, 22 * fem),
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                      child: Container(
                                        // primary7Um (19:852)
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
                                            child: Text(
                                              'Start Speech-To-Text',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Inter',
                                                fontSize: 20 * ffem,
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
                              Positioned(
                                // singlebuttonuvR (19:924)
                                left: 0 * fem,
                                top: 66 * fem,
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
                                      // light1yT (19:925)
                                      padding: EdgeInsets.fromLTRB(16 * fem, 17 * fem, 16 * fem, 22 * fem),
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                      child: Container(
                                        // primaryYiV (19:928)
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
                                                // Navigate to the SecondPage when the button is pressed
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => TextEditorScreen()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.transparent, // Set the button's background color to transparent
                                                elevation: 0, // Remove elevation
                                              ),
                                              child: Text(
                                                'Show Introduction Banner',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 16 * ffem,
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
                                      padding: EdgeInsets.fromLTRB(16 * fem, 17 * fem, 16 * fem, 22 * fem),
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
                                                // Navigate to the SecondPage when the button is pressed
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => FileListScreen()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.transparent, // Set the button's background color to transparent
                                                elevation: 0, // Remove elevation
                                              ),
                                              child: Text(
                                                'View Transcript Records',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 16 * ffem,
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}