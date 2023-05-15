import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class DividendWidget extends StatefulWidget {
  const DividendWidget({Key? key}) : super(key: key);

  @override
  State<DividendWidget> createState() => _DividendWidgetState();
}

class _DividendWidgetState extends State<DividendWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(title: 'Dividend Payments'),
        RowWidget(
          type: 'header',
          col1: 'Date',
          col2: 'Pc',
          col3: 'Gross',
          col4: 'Tax',
          col5: 'Fee',
          col6: 'Net',
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return RowWidget(
                type: index % 2 == 0 ? 'data' : 'dataGrey',
                col1: '20.02.22',
                col2: '61',
                col3: '4.27',
                col4: '1.07',
                col5: '0.00',
                col6: '3.20',
              );
            })
      ],
    );
  }
}
