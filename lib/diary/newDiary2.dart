import 'package:app/diary/appBarD.dart';
import 'package:app/diary/diary.dart';
import 'package:app/diary/gradientButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDiary2 extends StatelessWidget {
  const NewDiary2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
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
                  Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                    alignment: Alignment.center,
                    child: Text(
                      'Add a note',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 15),
                      child: Text(
                        'Title',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 15),
                      child: Text(
                        'Description',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 15, bottom: 15),
                    child: Container(
                      color: Colors.white,
                      height: 150,
                      child: const TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GradientButton(
                    buttonText: 'Save',
                    enableIcon: false,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Diary()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Diary()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}