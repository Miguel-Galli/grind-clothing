import 'package:flutter/material.dart';

class MyTextfromfieldWidget extends StatelessWidget {
  final String hintText;
  bool obscureText = false;
  MyTextfromfieldWidget({super.key, required this.hintText,required this.obscureText});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,

      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.green[10],
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(1),
          ),

        ),
      ),
    );
  }
}
