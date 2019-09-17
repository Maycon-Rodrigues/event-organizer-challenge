import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hitText;
  final bool obscureText;

  CustomTextField({this.hitText = 'Daniel K', this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.grey),
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hitText,
          contentPadding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
          hintStyle: TextStyle(color: Colors.grey[300]),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]),
          ),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300])),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]),
          )),
    );
  }
}
