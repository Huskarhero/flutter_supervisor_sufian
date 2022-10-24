import 'package:flutter/material.dart';

import 'package:alnabali/src/screens/login.dart';
import 'package:alnabali/src/screens/forget1.dart';
import 'package:alnabali/src/screens/forget2.dart';
import 'package:alnabali/src/screens/forget3.dart';
import 'package:alnabali/src/screens/home.dart';

class AlnabaliApp extends StatelessWidget {
  const AlnabaliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to AL NABALI Driver',
      initialRoute: '/home',
      routes: {
        '/': (context) => const LoginScreen(),
        '/forget1': (context) => const Forget1Screen(),
        '/forget2': (context) => const Forget2Screen(),
        '/forget3': (context) => const Forget3Screen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
