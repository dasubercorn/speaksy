import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/frame-1.dart';
// import 'package:myapp/page-1/frame-10.dart';
// import 'package:myapp/page-1/frame-9.dart';
// import 'package:myapp/page-1/frame-8.dart';
// import 'package:myapp/page-1/frame-7.dart';
// import 'package:myapp/page-1/frame-6.dart';
// import 'package:myapp/page-1/frame-5.dart';
// import 'package:myapp/page-1/frame-4.dart';
// import 'package:myapp/page-1/frame-3.dart';
// import 'package:myapp/page-1/frame-2.dart';
// import 'package:myapp/page-1/frame-1.dart';
// import 'package:myapp/page-1/logomakr-7nheie-2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Speaksy',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene1(),
		),
		),
	);
	}
}
