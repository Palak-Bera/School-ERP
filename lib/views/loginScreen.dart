import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';
import 'package:school_erp/widgets/loginDesign.dart';
import 'package:school_erp/widgets/logo.dart';

/// [LoginScreen]
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      backgroundColor: white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter, child: LoginDesign()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(),
              ],
            )
          ],
        ),
      ),
    );
 
  }
}