

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_apps/constant.dart';
import 'package:store_apps/screens/products.dart';
import 'package:store_apps/widgets/custom_bottom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141521),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'images/3.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 430),
                  child: Center(
                    child: Image.asset('images/mycart1.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  child: Text(
                    'to our store',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  child: Text(
                    'Get your groceries in as fast as on hour',
                    style: TextStyle(color: Color(0xFFB4A8A2), fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Products();
                    }));
                  },
                  text: 'Get Started',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
