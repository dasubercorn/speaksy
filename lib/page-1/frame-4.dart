import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame44Yy (19:364)
        padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 9*fem, 258*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff000000)),
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0*fem, 4*fem),
              blurRadius: 2*fem,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroup4nsqXhT (PgZFb4mshDkcZhxsWv4nsq)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // pmSZX (19:372)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223*fem, 0*fem),
                    child: Text(
                      '1:24 PM',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // signal9iq (19:370)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                    width: 17*fem,
                    height: 12*fem,
                    child: Image.asset(
                      'assets/page-1/images/signal-6j3.png',
                      width: 17*fem,
                      height: 12*fem,
                    ),
                  ),
                  Container(
                    // wifisPw (19:368)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                    width: 17*fem,
                    height: 13*fem,
                    child: Image.asset(
                      'assets/page-1/images/wifi-MkD.png',
                      width: 17*fem,
                      height: 13*fem,
                    ),
                  ),
                  Container(
                    // batteryfullo2h (19:366)
                    width: 25*fem,
                    height: 12.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/battery-full-yLm.png',
                      width: 25*fem,
                      height: 12.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupnk75vd7 (PgZFiUjBx4WNNT6QgLnK75)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 13*fem, 60*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vectorSbT (19:374)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 242*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 22*fem,
                        height: 23*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-sXF.png',
                          width: 22*fem,
                          height: 23*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // logomakr7nheie1j4m (19:373)
                    width: 50*fem,
                    height: 49*fem,
                    child: Image.asset(
                      'assets/page-1/images/logomakr-7nheie-1-TcM.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // signinFoo (19:375)
              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 50*fem),
              child: Text(
                'Sign In',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupy2xhmXF (PgZFrZL4UaBavVnZE7y2XH)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
              width: 340*fem,
              height: 312*fem,
              child: Stack(
                children: [
                  Positioned(
                    // register3trm (19:376)
                    left: 5*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
                      width: 328*fem,
                      height: 312*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // focusedzuo (19:377)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupuiq7vYZ (PgZG38rmWrKHGvqVUDuiQ7)
                                  padding: EdgeInsets.fromLTRB(0*fem, 14*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // subheadingTYV (19:381)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 145*fem, 3*fem),
                                        child: Text(
                                          'example@gmail.com',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.28975*ffem/fem,
                                            color: Color(0xdd000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // emailMtm (19:382)
                                        width: 32*fem,
                                        height: 32*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/email.png',
                                          width: 32*fem,
                                          height: 32*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bgprimary5pm (19:379)
                                  width: double.infinity,
                                  height: 2*fem,
                                  decoration: BoxDecoration (
                                    gradient: LinearGradient (
                                      begin: Alignment(1, 0),
                                      end: Alignment(-1, 0),
                                      colors: <Color>[Color(0xff1a73e9), Color(0xff6b91f3)],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // defaultnUH (19:402)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 215*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupuax7KDK (PgZGFDLyfPXGJnuJL7uax7)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // autogrouppwxmfY5 (PgZGKTiu8nu5Zr7SQsPwXm)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224*fem, 4*fem),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // captiono8V (19:408)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                              child: Text(
                                                'Default name',
                                                style: SafeGoogleFont (
                                                  'Roboto',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.28975*ffem/fem,
                                                  color: Color(0xdd000000),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // subheading6tH (19:406)
                                              'Password',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.28975*ffem/fem,
                                                color: Color(0xdd000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Opacity(
                                        // locku53 (19:409)
                                        opacity: 0.4,
                                        child: Container(
                                          width: 32*fem,
                                          height: 32*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/lock-RQu.png',
                                            width: 32*fem,
                                            height: 32*fem,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bgprimaryoRK (19:404)
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xdd000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // defaultxJD (19:430)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouputbruz9 (PgZGj2sxSf1GUgdGfrUtbR)
                                  width: double.infinity,
                                  height: 47*fem,
                                  child: Container(
                                    // autogroupxekh3qT (PgZGoN65CWzmL9nEg9XeKh)
                                    width: 236*fem,
                                    height: 43*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // captionPPX (19:436)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                          child: Text(
                                            'Default name',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.28975*ffem/fem,
                                              color: Color(0xdd000000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // subheadingucm (19:434)
                                          'Six inputs is too much, trust me...',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.28975*ffem/fem,
                                            color: Color(0xdd000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // bgprimarySch (19:432)
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xdd000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // singlebuttonzPK (19:456)
                    left: 0*fem,
                    top: 201*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 340*fem,
                        height: 79*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff39e5f3),
                        ),
                        child: Container(
                          // lightVqs (19:457)
                          padding: EdgeInsets.fromLTRB(16*fem, 17*fem, 16*fem, 22*fem),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Container(
                            // primary2L1 (19:460)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(6*fem),
                              gradient: LinearGradient (
                                begin: Alignment(1, 0),
                                end: Alignment(-1, 0),
                                colors: <Color>[Color(0xff39e5f3), Color(0xff39e5f3)],
                                stops: <double>[0, 1],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x281d74e9),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 4*fem,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2890625*ffem/fem,
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}