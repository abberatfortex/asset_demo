import 'package:flutter/material.dart';

class RoundCornerButton extends StatelessWidget {
  String buttonText;
  RoundCornerButton({
    required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xff404050)
              : Colors.black),
      child: Center(
          child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
      )),
    );
  }
}
