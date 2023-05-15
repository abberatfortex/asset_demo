import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/round_corner_button.dart';
import 'package:flutter/material.dart';

class PortfolioFilesListingFooter extends StatelessWidget {
  const PortfolioFilesListingFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          title: 'Select new portfolio file',
          subTitle: 'Select where your existing data file is stored',
        ),
        const SizedBox(height: 15),
        RoundCornerButton(buttonText: 'Open new portfolio file')
      ],
    );
  }
}
