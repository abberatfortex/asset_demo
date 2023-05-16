import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundCornerButton extends StatelessWidget {
  String buttonText;
  RoundCornerButton({
    required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).brightness == Brightness.dark ? Color(0xff404050) : Colors.black),
      child: Center(
          child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
      )),
    );
  }
}
