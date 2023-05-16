import 'package:asset_demo/models/portfolio_files_listing_cell_model.dart';
import 'package:asset_demo/screens/settings.dart';
import 'package:asset_demo/widgets/dash_line_widget.dart';
import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/porfolio_files_listing_footer.dart';
import 'package:asset_demo/widgets/portfolio_files_listing_cell.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PortfolioFilesListing extends StatelessWidget {
  PortfolioFilesListing({Key? key}) : super(key: key);

  List<PortfolioFilesListingCellModel> portfolioFilesListingCellList = [
    PortfolioFilesListingCellModel('kommer.portfolio', '1,62 MB', 'Last modified: 19 Apr 2022 15:45'),
    PortfolioFilesListingCellModel('stock.portfolio', '1,98 MB', 'Last modified: 19 Apr 2022 15:45'),
    PortfolioFilesListingCellModel('crypto.portfolio', '1,14 MB', 'Last modified: 07 Mar 2022 11:37'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Portfolio Information'),
        leading: Image.asset(
          'assets/images/logo.png',
          scale: 3,
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));
              },
              child: Theme.of(context).brightness == Brightness.dark
                  ? Image.asset('assets/images/settingDark.png')
                  : Image.asset('assets/images/settingLight.png')),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderWidget(title: 'Previously opened fies'),
                    const SizedBox(height: 10),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      color: Colors.grey.shade300,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: DashLineView(
                                fillRate: 0.7,
                                dashColor: Colors.grey.shade300,
                              ),
                            ),
                        itemCount: portfolioFilesListingCellList.length,
                        itemBuilder: (context, index) {
                          return PortfolioFilesListingCell(
                            portfolioFileName: portfolioFilesListingCellList[index].portfolioFileName,
                            fileSize: portfolioFilesListingCellList[index].fileSize,
                            updatedAt: portfolioFilesListingCellList[index].updatedAt,
                          );
                        }),
                    portfolioFilesListingCellList.isEmpty
                        ? const SizedBox()
                        : Container(
                            height: 1.0,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                            margin: const EdgeInsets.symmetric(vertical: 20),
                          ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
              color: Theme.of(context).brightness == Brightness.dark ? Colors.grey.shade900 : Colors.grey.shade50,
              child: const PortfolioFilesListingFooter(),
            ),
          ),
        ],
      ),
    );
  }
}
