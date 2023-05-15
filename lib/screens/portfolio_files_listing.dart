import 'package:asset_demo/screens/settings.dart';
import 'package:asset_demo/widgets/dash_line_widget.dart';
import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/portfolio_widget.dart';
import 'package:asset_demo/widgets/round_corner_button.dart';
import 'package:flutter/material.dart';

class PortfolioFilesListing extends StatelessWidget {
  const PortfolioFilesListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Portfolio Information'),
        centerTitle: true,
        elevation: 0,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderWidget(title: 'Previously opened fies'),
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 20),
                    color: Colors.grey.shade300,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: DashLineView(
                              fillRate: 0.7,
                              dashColor: Colors.grey.shade300,
                            ),
                          ),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return PortfolioWidget(
                          portfolioName: 'kommer.portfolio',
                          size: '1.62 MB',
                          updatedAt: 'Last modified 19 Apr 2022 4:15',
                        );
                      }),
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
            HeaderWidget(
              title: 'Select new portfolio file',
              subTitle: 'Select where your existing data file is stored',
            ),
            // const Text('Select where your existing data file is stored'),
            const SizedBox(height: 15),
            RoundCornerButton(buttonText: 'Open new portfolio file')
          ],
        ),
      ),
    );
  }
}
