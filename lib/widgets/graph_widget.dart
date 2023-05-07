import 'package:asset_demo/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(mainHeading: 'iShares Core MSCI Europe UCITS ETF',
          primaryHeading: 'IEOOB1YZSC51',),
        const SizedBox(height: 10),
        Material(
          elevation: 1,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
