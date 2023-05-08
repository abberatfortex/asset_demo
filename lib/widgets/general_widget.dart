import 'package:asset_demo/models/value_model.dart';
import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class GeneralWidget extends StatefulWidget {
  const GeneralWidget({Key? key}) : super(key: key);

  @override
  State<GeneralWidget> createState() => _GeneralWidgetState();
}

class _GeneralWidgetState extends State<GeneralWidget> {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(title: 'General',),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: TileWidget(title: 'Purchase (FIFO)', values: [ValueModel(value: '1.160,56'), ValueModel(value: '19,06')])),
            SizedBox(width: 20),
            Expanded(child: TileWidget(title: 'Valuation', values: [ValueModel(value: '1.160,56', changeInValue: '515,11'), ValueModel(value: '1.160,56', changeInValue: '43,82')])),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: TileWidget(title: 'Diviends',  values: [ValueModel(value: '1.160,56')], sinceChanged: 'Since 20.02.2020',)),
            SizedBox(width: 20),
            Expanded(child: TileWidget(title: 'Performance',  values: [ValueModel(value: '1.160,56'), ValueModel(value: '19,06')])),
          ],
        ),

      ],
    );
  }
}
