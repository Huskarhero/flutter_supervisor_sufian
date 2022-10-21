import 'package:flutter/material.dart';

import 'package:alnabali/src/screens/login.dart';
import 'package:alnabali/src/screens/forget.dart';
import 'package:alnabali/src/screens/forget2.dart';
import 'package:alnabali/src/screens/forget3.dart';

class AlnabaliApp extends StatelessWidget {
  const AlnabaliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        //body: LoginScreen(),
        //body: ForgetScreen(),
        body: Forget2Screen(),
        //body: Forget3Screen(),
      ),
    );
  }
}
