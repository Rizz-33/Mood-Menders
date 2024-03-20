import 'package:flutter/material.dart';

class DatesWidget extends StatelessWidget {
  const DatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    final controller = ScrollController(initialScrollOffset: 3 * 60.0);

    return Container(
      height: 60,
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          DateTime date = today.add(Duration(days: index - 3));
          bool isToday = date.day == today.day && date.month == today.month && date.year == today.year;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: isToday ? 30 : 20,
              backgroundColor: const Color.fromARGB(255, 154, 191, 188),
              child: Text(
                date.day.toString(),
                style: TextStyle(
                  color: const Color.fromARGB(255, 14, 3, 3),
                  fontWeight: isToday ? FontWeight.w400 : FontWeight.normal,
                  fontSize: isToday ? 22 : 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}