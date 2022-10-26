import 'package:flutter/material.dart';

import 'package:alnabali/src/screens/login.dart';
import 'package:alnabali/src/screens/forget1.dart';
import 'package:alnabali/src/screens/forget2.dart';
import 'package:alnabali/src/screens/forget3.dart';
import 'package:alnabali/src/screens/home.dart';
import 'package:alnabali/src/screens/edit_profile.dart';
import 'package:alnabali/src/screens/change_password.dart';
import 'package:alnabali/src/screens/trip_detail.dart';

class AlnabaliApp extends StatelessWidget {
  const AlnabaliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to AL NABALI Driver',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/forget1': (context) => const Forget1Screen(),
        '/forget2': (context) => const Forget2Screen(),
        '/forget3': (context) => const Forget3Screen(),
        '/home': (context) => const HomeScreen(),
        '/edit_profile': (context) => const EditProfileScreen(),
        '/change_password': (context) => const ChangePasswordScreen(),
        '/trip_detail': (context) => const TripDetailScreen(),
      },
    );
  }
}
