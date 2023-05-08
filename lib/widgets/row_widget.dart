import 'package:flutter/material.dart';


class RowWidget extends StatefulWidget {
  String? col1,col2,col3,col4,col5,col6, type;
  RowWidget({Key? key, this.col1, this.col2, this.col3, this.col4, this.col5, this.col6, this.type}) : super(key: key);

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.type == 'header' ? Colors.grey :
        widget.type == 'dataGrey' ? Colors.grey.shade200 :
          Colors.white
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text(widget.col1 ?? '',  style: TextStyle(fontWeight:  widget.type == 'header' ? FontWeight.bold : FontWeight.normal, color:  widget.type == 'header' ? Colors.white : Colors.black, fontSize: 12))),
          Expanded(
              flex: 2,
              child: Text(widget.col2 ?? '', style: TextStyle(fontWeight:  widget.type == 'header' ? FontWeight.bold : FontWeight.normal, color:  widget.type == 'header' ? Colors.white : Colors.black, fontSize: 12))),
          Expanded(
              flex: 2,
              child: Text(widget.col3 ?? '', style: TextStyle(fontWeight:  widget.type == 'header' ? FontWeight.bold : FontWeight.normal, color:  widget.type == 'header' ? Colors.white : Colors.black, fontSize: 12))),
          Expanded(
              flex: 2,
              child: Text(widget.col4 ?? '', style: TextStyle(fontWeight:  widget.type == 'header' ? FontWeight.bold : FontWeight.normal, color:  widget.type == 'header' ? Colors.white : Colors.black, fontSize: 12))),
          Expanded(
              flex: 2,
              child: Text(widget.col5 ?? '', style: TextStyle(fontWeight:  widget.type == 'header' ? FontWeight.bold : FontWeight.normal, color:  widget.type == 'header' ? Colors.white : Colors.black, fontSize: 12))),
          Expanded(
              flex: 1,
              child: Text(widget.col6 ?? '', style: TextStyle(fontWeight:  widget.type == 'header' ? FontWeight.bold : FontWeight.normal, color:  widget.type == 'header' ? Colors.white : Colors.black, fontSize: 12))),

        ],
      ),
    );
  }
}
