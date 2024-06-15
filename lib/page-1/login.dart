import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';
import 'frame-5.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    final dbHelper = DatabaseHelper.instance;
    final loggedIn = await dbHelper.loginUser(username, password);

    if (loggedIn) {
      // Navigate to the next page after successful login
      Navigator.push(context, MaterialPageRoute(builder: (context) => Scene2(username: username)));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text(''),
        elevation: 0,
      ),
      body: Container( // Wrap the Column with a Container to add margins
        margin: EdgeInsets.symmetric(horizontal: 16.0), // Set left and right margins
        child: SingleChildScrollView( // Use SingleChildScrollView to scroll the content if it overflows
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 1 * fem),
                width: 80 * fem,
                height: 80 * fem,
                child: Image.asset(
                  'assets/page-1/images/logomakr-7nheie-1-zZf.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Hi, I am Speaksy!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                'I am your personal speech-to-text assistant.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  _login();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: Colors.transparent, // Set the button's background color to transparent
                  elevation: 0, // Remove elevation
                ),
                child: Container(
                  width: 340 * fem,
                  height: 40 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff39e5f3),
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
                    child: Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2890625 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Navigate to the registration page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
                child: Text('New user? Sign up here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    final dbHelper = DatabaseHelper.instance;
    final result = await dbHelper.registerUser(username, password);

    if (result != null) {
      // Registration successful, navigate back to login page
      Navigator.pop(context);
    } else {
      // Handle registration failure, e.g., username already exists
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Registration Failed'),
            content: Text('Username already exists. Please choose a different username.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text(''),
        elevation: 0,
      ),
      body: Container( // Wrap the Column with a Container to add margins
        margin: EdgeInsets.symmetric(horizontal: 16.0), // Set left and right margins
        child: SingleChildScrollView( // Use SingleChildScrollView to scroll the content if it overflows
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 1 * fem),
                width: 80 * fem,
                height: 80 * fem,
                child: Image.asset(
                  'assets/page-1/images/logomakr-7nheie-1-zZf.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Nice to meet you! How about we get to know each other?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  _register();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: Colors.transparent, // Set the button's background color to transparent
                  elevation: 0, // Remove elevation
                ),
                child: Container(
                  width: 340 * fem,
                  height: 40 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff39e5f3),
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
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2890625 * ffem / fem,
                        color: Color(0xff000000),
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}