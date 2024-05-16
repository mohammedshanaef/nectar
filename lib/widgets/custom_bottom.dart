import 'package:flutter/material.dart';
import 'package:store_apps/constant.dart';

import 'package:flutter/material.dart';
import 'package:store_apps/constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, this.text});
  final VoidCallback? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        width: 250,
        height: 50,
        child: Center(
          child: Text(
            text ?? '',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
