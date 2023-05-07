import 'package:flutter/material.dart';


class RowHeader extends StatelessWidget {
  String? t1,t2,t3,t4,t5,t6;
  Color? containerColor, textColor;
  RowHeader({Key? key, this.t1, this.t2, this.t3, this.t4, this.t5, this.t6, this.containerColor, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor ?? Colors.white
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text(t1 ?? '',  style: TextStyle(fontWeight: textColor != null ? FontWeight.bold : FontWeight.normal, color: textColor ?? Colors.black))),
          Expanded(
              flex: 2,
              child: Text(t2 ?? '',  style: TextStyle(fontWeight: textColor != null ? FontWeight.bold : FontWeight.normal, color: textColor ?? Colors.black))),
          Expanded(
              flex: 2,
              child: Text(t3 ?? '',  style: TextStyle(fontWeight: textColor != null ? FontWeight.bold : FontWeight.normal, color: textColor ?? Colors.black))),
          Expanded(
              flex: 2,
              child: Text(t4 ?? '',  style: TextStyle(fontWeight: textColor != null ? FontWeight.bold : FontWeight.normal, color: textColor ?? Colors.black))),
          Expanded(
              flex: 2,
              child: Text(t5 ?? '',  style: TextStyle(fontWeight: textColor != null ? FontWeight.bold : FontWeight.normal, color: textColor ?? Colors.black))),
          Expanded(
              flex: 1,
              child: Text(t6 ?? '',  style: TextStyle(fontWeight: textColor != null ? FontWeight.bold : FontWeight.normal, color: textColor ?? Colors.black))),

        ],
      ),
    );
  }
}
