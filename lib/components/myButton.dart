import 'package:flutter/material.dart';
import 'package:fyp_project/screens/loginPage.dart';
import '../screens/constants.dart';
class MyButton extends StatelessWidget {
  MyButton({Key? key, required this.buttonText, required this.onTap}) : super(key: key);
  final String buttonText;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: greenColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Text(
          buttonText,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        width: 370,
        height: 50,
      ),
    );
  }
}
