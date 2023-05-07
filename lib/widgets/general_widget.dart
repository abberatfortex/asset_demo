import 'package:asset_demo/widgets/header_widget.dart';
import 'package:asset_demo/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class GeneralWidget extends StatelessWidget {
  const GeneralWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(mainHeading: 'General',),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: TileWidget(t1: 'Purchase (FIFO)', t2: '1.160,56', t4: '1.160,56',)),
            SizedBox(width: 20),
            Expanded(child: TileWidget(t1: 'Valuation', t2: '1.160,56', t3: '515,11', t4: '27,47', t5: '43,82%',)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: TileWidget(t1: 'Diviends', t2: '1.160,56', t6: 'Since 20.02.2020',)),
            SizedBox(width: 20),
            Expanded(child: TileWidget(t1: 'Performance', t2: '5,35% IZF',  t4: '5,23% TTWROR',)),
          ],
        ),

      ],
    );
  }
}
