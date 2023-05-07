import 'package:flutter/material.dart';


class HeaderWidget extends StatelessWidget {
  String? mainHeading;
  String? primaryHeading;
  HeaderWidget({Key? key, this.mainHeading, this.primaryHeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mainHeading ?? '', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text(primaryHeading ?? '', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
