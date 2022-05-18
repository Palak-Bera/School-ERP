import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';
import 'package:school_erp/views/loginScreen.dart';
import 'package:school_erp/widgets/Button.dart';
import 'package:school_erp/widgets/customField.dart';
import 'package:school_erp/widgets/customText.dart';

class SignUpDesign extends StatefulWidget {
  const SignUpDesign({
    Key? key,
  }) : super(key: key);

  @override
  _SignUpDesignState createState() => _SignUpDesignState();
}

class _SignUpDesignState extends State<SignUpDesign> {
  bool _hidePassword = true;
  @override
  void initState() {
    _hidePassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomField(
              text: "Name",
              obsecure: false,
             
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomField(
              text: "Email",
              obsecure: false,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomField(
              text: "Password",
              sicon: IconButton(
                icon: Icon(
                  _hidePassword ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                  });
                },
              ),
              obsecure: _hidePassword,
            ),
          ),
          Spacer(),
          CustomButton(text: "Sign UP", onpressed: () {}),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Already Have an Account ?",
                color: Colors.black,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }),
                    );
                  },
                  child: CustomText(
                    text: "Login!!",
                    fontSize: 18,
                  )),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
