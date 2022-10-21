import 'package:flutter/material.dart';

// button types used in login course.
enum LoginButtonType { logIn, send, verify, reset }

class LoginButton extends StatefulWidget {
  final LoginButtonType btnType;
  final VoidCallback onPressCallback;

  const LoginButton({
    Key? key,
    required this.btnType,
    required this.onPressCallback,
  }) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    String btnTitle;
    switch (widget.btnType) {
      case LoginButtonType.logIn:
        btnTitle = 'LOGIN';
        break;
      case LoginButtonType.send:
        btnTitle = 'SEND';
        break;
      case LoginButtonType.verify:
        btnTitle = 'VERIFY';
        break;
      case LoginButtonType.reset:
        btnTitle = 'RESET';
        break;
      default:
        btnTitle = 'UNKNOWN';
    }

    return SizedBox(
      //width: 500,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 330,
            //height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset('assets/images/btn_login.png'),
          ),
          Positioned.fill(
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                foregroundColor: const Color(0xFF0055A6),
                //padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  //color: Color(0xFF0055A6),
                ),
              ),
              onPressed: widget.onPressCallback,
              child: Text(btnTitle),
            ),
          ),
        ],
      ),
    );
  }
}
