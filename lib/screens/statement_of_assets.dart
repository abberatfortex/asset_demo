import 'package:asset_demo/screens/settings.dart';
import 'package:asset_demo/widgets/dash_line_widget.dart';
import 'package:asset_demo/widgets/graph_widget.dart';
import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/share_data_widget.dart';
import 'package:flutter/material.dart';

class StatementOfAssets extends StatefulWidget {
  const StatementOfAssets({Key? key}) : super(key: key);

  @override
  State<StatementOfAssets> createState() => _StatementOfAssetsState();
}

class _StatementOfAssetsState extends State<StatementOfAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statement of Assets'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              title: '13.613,62 EUR',
              subTitle: '+3.247,63 (+24,17%)',
            ),
            const SizedBox(height: 20),
            const GraphWidget(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Gesamtportfolio',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text('€13.613,62',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            ),
            Container(
              height: 1.0,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Colors.grey.shade300,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: DashLineView(
                        fillRate: 0.7,
                        dashColor: Colors.grey.shade300,
                      ),
                    ),
                itemBuilder: (context, index) {
                  return ShareDataWidget(
                    imagePath: 'green_graph.png',
                    assetName: 'iShares Core MSCI Europe',
                    assetNumber: 'IE00B1YZSC51',
                    differenceInPercent: '12,31% of all assets',
                    assetValue: '€1.675,67',
                    assetCalculation: '61,0 x €27,47',
                    differenceInNumber: '+€515,11 (+43,82%)',
                  );
                })
          ],
        ),
      ),
    );
  }
}
