import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onpressed;
  final Color? buttoncolor;
  final Color? buttonTextcolor;
  CustomButton(
      {Key? key, required this.text, required this.onpressed, this.buttoncolor , this.buttonTextcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: MediaQuery.of(context).size.width * 0.15,
      minWidth: MediaQuery.of(context).size.width * 0.65,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      color: buttoncolor ?? primaryBlue,
      onPressed: this.onpressed,
      child: Text(
        this.text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: buttonTextcolor ?? white,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
