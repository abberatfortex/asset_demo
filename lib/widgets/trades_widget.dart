import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class TradesWidget extends StatefulWidget {
  const TradesWidget({Key? key}) : super(key: key);

  @override
  State<TradesWidget> createState() => _TradesWidgetState();
}

class _TradesWidgetState extends State<TradesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(title: 'Trades'),
        RowWidget(type: 'header',
        col1: 'Pc', col2: 'Start', col3: 'End', col4: 'Purchase', col5: '', col6: 'IZF',),
        ListView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index){
              return  RowWidget(type: index%2 == 0 ? 'data' : 'dataGrey',
                col1: '61', col2: '08 Jan 19', col3: '(open)', col4: '1160,56', col5: '1675,67', col6: '5.35%',);
            })

      ],
    );
  }
}
