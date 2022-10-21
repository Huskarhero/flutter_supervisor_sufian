import 'package:flutter/material.dart';

import 'package:alnabali/src/widgets/login_textfield.dart';
import 'package:alnabali/src/widgets/login_button.dart';

class Forget3Screen extends StatefulWidget {
  const Forget3Screen({Key? key}) : super(key: key);

  @override
  State<Forget3Screen> createState() => _Forget3ScreenState();
}

class _Forget3ScreenState extends State<Forget3Screen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 250,
                child: Image.asset("assets/images/forget_icon3.png"),
              ),
              const SizedBox(height: 30),
              const Text(
                "FORGET PASSWORD",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Enter your new password below",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 70),
              const LoginTextField(txtFieldType: LoginTextFieldType.newPassword),
              const SizedBox(height: 40),
              const LoginTextField(txtFieldType: LoginTextFieldType.confirmNewPwd),
              const SizedBox(height: 70),
              LoginButton(
                btnType: LoginButtonType.reset,
                onPressCallback: () {},
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
