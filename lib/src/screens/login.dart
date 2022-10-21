import 'package:flutter/material.dart';

import 'package:alnabali/src/widgets/login_textfield.dart';
import 'package:alnabali/src/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_normal.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset("assets/images/login_icon.png"),
              const Text(
                "LOGIN",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 90),
              const LoginTextField(txtFieldType: LoginTextFieldType.username),
              const SizedBox(height: 50),
              const LoginTextField(txtFieldType: LoginTextFieldType.password),
              const SizedBox(height: 100),
              LoginButton(
                btnType: LoginButtonType.logIn,
                onPressCallback: () {},
              ),
              const SizedBox(height: 120),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "FORGET PASSWORD",
                  style: TextStyle(
                    shadows: [
                      Shadow(color: Colors.white, offset: Offset(0, -6))
                    ],
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationThickness: 2,
                  ),
                ),
              ),
              const SizedBox(height: 46),
            ],
          ),
        ),
      ),
    );
  }
}
