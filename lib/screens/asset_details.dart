import 'package:asset_demo/widgets/dividend_widget.dart';
import 'package:asset_demo/widgets/general_widget.dart';
import 'package:asset_demo/widgets/graph_widget.dart';
import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/trades_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssetDetails extends StatefulWidget {
  const AssetDetails({Key? key}) : super(key: key);

  @override
  State<AssetDetails> createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asset Details'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                title: 'iShares Core MSCI Europe UCITS ETF',
                subTitle: 'IEOOB1YZSC51',
              ),
              const SizedBox(height: 10),
              GraphWidget(),
              SizedBox(height: 20),
              GeneralWidget(),
              SizedBox(height: 20),
              TradesWidget(),
              SizedBox(height: 20),
              DividendWidget()
            ],
          ),
        ),
      ),
    );
  }
}
