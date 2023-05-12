import 'package:flutter/material.dart';


class PortfolioWidget extends StatelessWidget {
  String? portfolioName, size, updatedAt;
   PortfolioWidget({
     this.portfolioName, this.size, this.updatedAt,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(portfolioName ?? '', style: TextStyle(fontSize: 14),),
                SizedBox(width: 8),
                Container(
                  padding: size == null ? EdgeInsets.zero : EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey
                  ),
                  child: Text(size ?? '', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(updatedAt ?? '', style: TextStyle(color: Colors.grey, fontSize: 10),)
          ],
        ),
        Icon(Icons.arrow_forward_ios, color: Colors.grey,)
      ],
    );
  }
}