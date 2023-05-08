import 'package:asset_demo/widgets/dividend_widget.dart';
import 'package:asset_demo/widgets/general_widget.dart';
import 'package:asset_demo/widgets/graph_widget.dart';
import 'package:asset_demo/widgets/trades_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





class AssetDetails extends StatefulWidget {
  const AssetDetails({Key? key}) : super(key: key);

  @override
  State<AssetDetails> createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {

  var isDarkMode = false.obs;

  void toggleTheme() {
    isDarkMode.toggle();
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asset Details'), centerTitle: true, elevation: 0,
        actions: [
          IconButton(
            icon: Obx(() => Icon(isDarkMode.value ? Icons.wb_sunny : Icons.brightness_2)),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              GraphWidget(),
              SizedBox(height: 20),
              GeneralWidget(),
              SizedBox(height: 20),
              TradesWidget(),
              DividendWidget()
            ],
          ),
        ),
      ),
    );
  }
}
