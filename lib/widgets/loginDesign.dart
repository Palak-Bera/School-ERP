import 'package:flutter/material.dart';
import 'package:school_erp/Resources/colors.dart';
import 'package:school_erp/views/signUpScreen.dart';
import 'package:school_erp/widgets/Button.dart';
import 'package:school_erp/widgets/customField.dart';
import 'package:school_erp/widgets/customText.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({
    Key? key,
  }) : super(key: key);

  @override
  _LoginDesignState createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
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
        color: primaryBlue,
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
          /// text field [Username]
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomField(
              text: "Username",
              obsecure: false,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          /// text field [Password]
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomField(
              text: "Password",
              sicon: IconButton(
                icon: Icon(
                  _hidePassword ? Icons.visibility : Icons.visibility_off,
                  color: white,
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
          SizedBox(
            height: 35,
          ),
          /// [Login Button]
          CustomButton(
            text: "Login",
            onpressed: () {},
            buttoncolor: white,
            buttonTextcolor: primaryBlue,
          ),
          SizedBox(
            height: 10,
          ),
          /// [Register Text]
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Don't have an account ? ",
                color: Colors.black,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }),
                    );
                  },
                  child: CustomText(
                      text: "Register !!", fontSize: 18, color: white)),
            ],
          ),
          Spacer(),
          /// [google signIn Button]
          CustomButton(
            text: "Sign With Google",
            onpressed: () {},
            buttoncolor: white,
            buttonTextcolor: primaryBlue,
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
