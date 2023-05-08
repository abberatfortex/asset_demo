import 'package:asset_demo/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(title: 'iShares Core MSCI Europe UCITS ETF',
          subTitle: 'IEOOB1YZSC51',),
        const SizedBox(height: 10),
        Material(
          elevation: 1,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            height: 250,

          ),
        )
      ],
    );
  }
}
