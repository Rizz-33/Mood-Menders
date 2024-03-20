
import 'package:flutter/material.dart';

class PercentageBar extends StatelessWidget {
  final double percentage;
  final Color barColor;
  final Color backgroundColor;

  const PercentageBar({
    Key? key,
    required this.percentage,
    this.barColor = Colors.green,
    this.backgroundColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: (percentage * 100).toInt(),
          child: Container(
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        Expanded(
          flex: ((11 - percentage) * 100).toInt(),
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        )
      ],
    );
  }
}

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 200,
          child: const PercentageBar(percentage: 0.7),
        )
      ),
    ),
  ));
}
