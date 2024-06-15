import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 144.6657714844;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // logomakr7nheie2S2V (403:2)
        width: double.infinity,
        height: 139*fem,
        child: Image.asset(
          'assets/page-1/images/logomakr-7nheie-2-ozR.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}