import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';

/// Customized Text widget
class CustomText extends StatelessWidget {
  final String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  bool? softwrap;

  CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.softwrap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Text(
        this.text,
        softWrap: this.softwrap ?? false,
        style: TextStyle(
          color: this.color ?? primaryBlue,
          fontSize: this.fontSize ?? 15.0,
          fontWeight: this.fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}
