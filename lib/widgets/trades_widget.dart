import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/row_header.dart';
import 'package:flutter/material.dart';

class TradesWidget extends StatelessWidget {
  const TradesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(mainHeading: 'Trades'),
        RowHeader(containerColor: Colors.grey, textColor: Colors.white,
        t1: 'Pc', t2: 'Start', t3: 'End', t4: 'Purchase', t5: '', t6: 'IZF',),
        RowHeader(containerColor: Colors.white,
          t1: '61', t2: '08 Jan 19', t3: '(open)', t4: '1160,56', t5: '1675,67', t6: '5.35%',),
        RowHeader(containerColor: Colors.grey.shade100,
          t1: '61', t2: '08 Jan 19', t3: '(open)', t4: '1160,56', t5: '1675,67', t6: '5.35%',)
      ],
    );
  }
}
