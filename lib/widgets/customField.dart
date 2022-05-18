import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';

class CustomField extends StatefulWidget {
  final String text;
  final IconButton? sicon;
  final bool obsecure;

  const CustomField(
      {Key? key, required this.text, this.sicon, required this.obsecure})
      : super(key: key);

  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red )
        ),
        labelText: widget.text,
        suffixIcon: widget.sicon,
      ),
      obscureText: widget.obsecure,
    );
  }
}
