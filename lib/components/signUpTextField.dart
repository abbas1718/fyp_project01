import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final controller;
  final keyBoardType;
  final String hintText;
  const MyTextField({Key? key, this.controller, required this.hintText, required this.keyBoardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: TextField(
          keyboardType: keyBoardType,
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )

      ),
    );
  }
}
