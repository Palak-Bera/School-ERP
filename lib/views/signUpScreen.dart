import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';
import 'package:school_erp/widgets/logo.dart';
import 'package:school_erp/widgets/signUpDesign.dart';

/// [SignUp Screen]
class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter, child: SignUpDesign()),
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
