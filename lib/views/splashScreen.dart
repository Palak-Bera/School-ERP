import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';
import 'package:school_erp/views/signUpScreen.dart';

/// [SplashScreen]
class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SignUpScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: primaryBlue, body: Container());
  }
}
