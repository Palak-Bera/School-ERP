import 'package:flutter/material.dart';


class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: MediaQuery.of(context).size.width*0.30,
          width: MediaQuery.of(context).size.width*0.30,
         color: Colors.red,
         
        ),
      ),
    );
  }
}