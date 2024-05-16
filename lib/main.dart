import 'package:flutter/material.dart';
import 'package:store_apps/screens/bavagers.dart';
import 'package:store_apps/screens/introscreen.dart';
import 'package:store_apps/screens/loginscreen.dart';
import 'package:store_apps/screens/mycart.dart';
import 'package:store_apps/screens/successful_product';
import 'package:store_apps/screens/findproducts.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
