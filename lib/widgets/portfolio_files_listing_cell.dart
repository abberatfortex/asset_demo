import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PortfolioFilesListingCell extends StatelessWidget {
  String? portfolioFileName, fileSize, updatedAt;

  PortfolioFilesListingCell({
    this.portfolioFileName,
    this.fileSize,
    this.updatedAt,
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
                Text(
                  portfolioFileName ?? '',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: fileSize == null ? EdgeInsets.zero : const EdgeInsets.all(4),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xFFDDDFE1)),
                  child: Text(
                    fileSize ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              updatedAt ?? '',
              style: const TextStyle(color: Colors.grey, fontSize: 10),
            )
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios,
        )
      ],
    );
  }
}
