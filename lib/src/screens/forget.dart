import 'package:flutter/material.dart';

import 'package:alnabali/src/widgets/login_textfield.dart';
import 'package:alnabali/src/widgets/login_button.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 250,
                  child: Image.asset("assets/images/forget_icon.png"),
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
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'We will send a one time '),
                      TextSpan(
                        text: 'OTP',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      TextSpan(text: ' on \n your mobile number'),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                const LoginTextField(
                    txtFieldType: LoginTextFieldType.mobileNumber),
                const SizedBox(height: 120),
                LoginButton(
                  btnType: LoginButtonType.send,
                  onPressCallback: () {},
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: IconButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          iconSize: 36,
          icon: Image.asset('assets/images/btn_back.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
