import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayDateWidget extends StatelessWidget {
  const TodayDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd MMMM yyyy').format(now);

    return Text(
      formattedDate,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}