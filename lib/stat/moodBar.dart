import 'package:app/stat/percentageBar.dart';
import 'package:flutter/material.dart';

class MoodImages extends StatelessWidget {
  const MoodImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow('lib/images/loveearth (1).png', 0.2),
        buildRow('lib/images/loveearth (2).png', 0.4),
        buildRow('lib/images/loveearth (3).png', 0.3),
        buildRow('lib/images/loveearth (4).png', 0.6),
        buildRow('lib/images/loveearth (5).png', 0.8),
      ],
    );
  }
  
  buildRow(String imagePath, double percentage) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Expanded(
              child: PercentageBar(percentage: percentage),
            ),
          ),
        ],
      ),
    );
  }
}