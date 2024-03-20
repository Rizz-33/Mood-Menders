// import 'package:flutter/material.dart';
// import 'package:app/home.dart'; 
// import 'package:app/diary.dart'; 
// import 'package:app/Chat.dart'; 
// import 'package:app/stat.dart'; 
// import 'package:app/profile.dart'; 

// class CustomNavigationBar extends StatefulWidget {
//   @override
//   _CustomNavigationBarState createState() => _CustomNavigationBarState();
// }

// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     Home(),
//     Diary(),
//     Chat(),
//     Stat(),
//     Profile(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         selectedItemColor: const Color.fromARGB(255, 134, 208, 203), // Selected item color
//         unselectedItemColor: Colors.grey, // Unselected item color
//         backgroundColor: const Color.fromARGB(255, 134, 208, 203), // Background color
//         showSelectedLabels: false, // Do not show labels for selected items
//         showUnselectedLabels: false, // Do not show labels for unselected items
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.save, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.pie_chart, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
//             label: '',
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//           if (index == 1) { // If the save icon is clicked
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Diary()), // Navigate to the Diary page
//             );
//           }
//         },
//       ),
//     );
//   }
// }