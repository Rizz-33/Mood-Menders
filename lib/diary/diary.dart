import 'package:app/diary/dates.dart';
import 'package:app/diary/diaryPage.dart';
import 'package:app/diary/myButton.dart';
import 'package:app/diary/newDiary.dart';
import 'package:app/diary/todaysdate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

//import 'todaysdate.dart';

class Diary extends StatelessWidget {
  const Diary({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top:20.0),
                  child: Text(
                    'SECRET DIARY',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0, top: 20.0),
                  child: SButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewDiary()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Image.asset(
              'lib/images/diary1.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      titleSpacing: 4.0,
      toolbarHeight: 130,
      toolbarOpacity: 0.9,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(18),
            bottomLeft: Radius.circular(18)),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevation: 0.00,
      backgroundColor: const Color.fromARGB(255, 134, 208, 203),
    ),
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TodayDateWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const DatesWidget(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 300,
              height: 0.5,
              color: const Color.fromARGB(255, 70, 66, 68),
            ),
            const DiaryEntry(),
            const DiaryEntry(),
          ],
        ),
      ),
    );
  }
}

class DiaryEntry extends StatelessWidget {
  const DiaryEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DiaryPage()),
    );
  },
  child: Container(
    width: 370,
    height: 176.0,
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 204, 248, 245),
      borderRadius: BorderRadius.circular(10),
    ),
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
          padding: EdgeInsets.only(top: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'I got stickers from FOSS ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. nhuytdrrdctijoko ihiyui ihiy8y',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
);
  }
}