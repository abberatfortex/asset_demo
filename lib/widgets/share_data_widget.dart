import 'package:asset_demo/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class ShareDataWidget extends StatelessWidget {
  String? imagePath, assetName, assetNumber, differenceInPercent, assetValue, assetCalculation, differenceInNumber;
  ShareDataWidget({
    this.imagePath,
    this.assetName,
    this.assetNumber,
    this.differenceInPercent,
    this.assetValue,
    this.assetCalculation,
    this.differenceInNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/$imagePath'),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(title: assetName ?? '', subTitle: assetNumber ?? ''),
                SizedBox(height: 8),
                Text(
                  differenceInPercent ?? '',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                )
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderWidget(title: assetValue ?? '', subTitle: assetCalculation ?? ''),
            SizedBox(height: 8),
            Text(
              differenceInNumber ?? '',
              style: TextStyle(fontSize: 12, color: Colors.green),
            )
          ],
        ),
      ],
    );
  }
}
