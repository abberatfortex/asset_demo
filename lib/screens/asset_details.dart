import 'package:asset_demo/widgets/header_widget.dart';
import 'package:flutter/material.dart';



class AssetDetails extends StatelessWidget {
  const AssetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asset Details'), centerTitle: true, elevation: 0,),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Column(
          children: [
           
          ],
        ),
      ),
    );
  }
}
