import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowWidget extends StatefulWidget {
  String? col1, col2, col3, col4, col5, col6, type;
  int? col1Flex, col2Flex, col3Flex, col4Flex, col5Flex, col6Flex;
  RowWidget(
      {Key? key,
      this.col1,
      this.col2,
      this.col3,
      this.col4,
      this.col5,
      this.col6,
      this.type,
      this.col1Flex,
      this.col2Flex,
      this.col3Flex,
      this.col4Flex,
      this.col5Flex,
      this.col6Flex})
      : super(key: key);

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).brightness == Brightness.dark
              ? widget.type == 'header'
                  ? Colors.grey.shade800
                  : widget.type == 'dataGrey'
                      ? Colors.grey.shade700
                      : Colors.black
              : widget.type == 'header'
                  ? Colors.grey
                  : widget.type == 'dataGrey'
                      ? Colors.grey.shade200
                      : Colors.white),
      child: Row(
        children: [
          Expanded(
              flex: widget.col1Flex ?? 2,
              child: Text(widget.col1 ?? '',
                  style: TextStyle(
                      fontWeight: widget.type == 'header'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: widget.type == 'header'
                          ? Colors.white
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontSize: 12))),
          Expanded(
              flex: widget.col2Flex ?? 2,
              child: Text(widget.col2 ?? '',
                  style: TextStyle(
                      fontWeight: widget.type == 'header'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: widget.type == 'header'
                          ? Colors.white
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontSize: 12))),
          Expanded(
              flex: widget.col3Flex ?? 2,
              child: Text(widget.col3 ?? '',
                  style: TextStyle(
                      fontWeight: widget.type == 'header'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: widget.type == 'header'
                          ? Colors.white
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontSize: 12))),
          Expanded(
              flex: widget.col4Flex ?? 2,
              child: Text(widget.col4 ?? '',
                  style: TextStyle(
                      fontWeight: widget.type == 'header'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: widget.type == 'header'
                          ? Colors.white
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontSize: 12))),
          Expanded(
              flex: widget.col5Flex ?? 2,
              child: Text(widget.col5 ?? '',
                  style: TextStyle(
                      fontWeight: widget.type == 'header'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: widget.type == 'header'
                          ? Colors.white
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontSize: 12))),
          Expanded(
              flex: widget.col6Flex ?? 1,
              child: Text(widget.col6 ?? '',
                  style: TextStyle(
                      fontWeight: widget.type == 'header'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: widget.type == 'header'
                          ? Colors.white
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontSize: 12))),
        ],
      ),
    );
  }
}
