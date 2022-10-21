import 'package:flutter/material.dart';

import 'package:alnabali/src/widgets/login_button.dart';
import 'package:alnabali/src/widgets/otp_field.dart';

class Forget2Screen extends StatefulWidget {
  const Forget2Screen({Key? key}) : super(key: key);

  @override
  State<Forget2Screen> createState() => _Forget2ScreenState();
}

class _Forget2ScreenState extends State<Forget2Screen> {
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
                      TextSpan(text: 'An '),
                      TextSpan(
                        text: 'OTP',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      TextSpan(text: ' was sent to your \n mobile number'),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 54,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1.6,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                    ),
                    Positioned(
                      bottom: 8,
                      child: OTPTextField(
                        length: 4,
                        width: 260,
                        fieldWidth: 40,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        onCompleted: (pin) {
                          //print("Completed: " + pin);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 120),
                LoginButton(
                  btnType: LoginButtonType.verify,
                  onPressCallback: () {},
                ),
                const SizedBox(height: 30),
                const Text(
                  "Did not receive the verification OTP?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Resend OTP in '),
                      TextSpan(
                        text: '00:59',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFAED1F),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
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
