import 'package:flutter/material.dart';
import 'package:store_apps/constant.dart';
import 'package:store_apps/screens/loginscreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginScreen();
        }));
      },
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Image.asset('images/1.png'),
        ),
      ),
    );
  }
}
