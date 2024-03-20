import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'SECRET DIARY',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            color: const Color.fromARGB(255, 70, 66, 68),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      titleSpacing: 4.0,
      toolbarHeight: 70,
      toolbarOpacity: 0.9,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(18),
            bottomLeft: Radius.circular(18)),
      ),
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 70, 66, 68),
      ),
      elevation: 0.00,
      backgroundColor: const Color.fromARGB(255, 134, 208, 203),
    ),
      body: Container(
        width: 370,
        height: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 248, 245),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'lib/images/loveearth (1).png',
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Happy',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              DateFormat('d MMMM yyyy, h:mm a').format(DateTime.now()),
                              style: const TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      'lib/images/love 1.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom:10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'I got stickers from FOSS',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}