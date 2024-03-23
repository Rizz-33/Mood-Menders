import 'package:app/components/continuebutton.dart';
import 'package:app/diary/diary.dart';
import 'package:app/motivationalquotes.dart';
import 'package:app/personalgrowthtips.dart';
import 'package:app/relaxation/relaxation.dart';
import 'package:app/successstories.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatefulWidget {
  const home_page({
    Key? key,
  }) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  String userName = '';

  @override
  void initState() {
    super.initState();
    _fetchUserName();
  }

  Future<void> _fetchUserName() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance
              .collection('Users')
              .doc(user.uid)
              .get();
      if (snapshot.exists) {
        setState(() {
          userName = snapshot.data()!['name']?.toString() ?? '';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 134, 208, 203),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Welcome Back\n$userName !',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'lib/images/newbg.png',
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 134, 208, 203),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 207, 190),
                    blurRadius: 4,
                    offset: Offset(0, 6), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Keep mending your feelings \nwith us...',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 15,
                          height: 1.2,
                          wordSpacing: 1.8,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            //frist box
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //message
                      Text(
                        'How do you feel recently ?',
                        style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //emojis
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 204, 248, 245),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/1.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      'lib/images/2.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      'lib/images/3.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      'lib/images/4.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      'lib/images/5.png',
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 204, 248, 245),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    //message
                    Text(
                      'Start journalling with us?',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),

            //continue button
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 204, 248, 245),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 194, 207, 190),
                      blurRadius: 4,
                      offset: Offset(0, 6), // Shadow position
                    ),
                  ],
                ),
                child: MyConButton(
                    buttontext: 'Continue',
                    onTap: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (const Diary())),
                        );
                      }
                    }),
              ),
            ),

            //inspiration
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //message
                  Text(
                    'Inspirations',
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => motivationalquotes_page()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: 350,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 194, 207, 190),
                        blurRadius: 4,
                        offset: Offset(0, 6), // Shadow position
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // First message
                        Text(
                          '"Good things take time"',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Second text
                        Text(
                          'Tap for more motivational quotes like this',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //two containers
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const successstories_page()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(251, 241, 255, 252),
                          border: Border.all(
                            color: Color.fromARGB(255, 204, 248, 245),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //message
                            Text(
                              'Success Stories',
                              style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  color: const Color.fromARGB(255, 70, 66, 68),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const personalgrowthtips_page()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(251, 241, 255, 252),
                          border: Border.all(
                            color: Color.fromARGB(255, 204, 248, 245),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //message
                            Text(
                              'Personal Growth Tips',
                              style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  color: const Color.fromARGB(255, 70, 66, 68),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ])),

            //relaxation box
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 204, 248, 245),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 194, 207, 190),
                      blurRadius: 4,
                      offset: Offset(0, 6), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Section 1 - Title
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Title
                          Text(
                            'Relaxation',
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Section 2 - Paragraph
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Paragraph
                          Text(
                            'Relaxing your mind with us with different \neasy ways. We will guide you to \ncalm yourself ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              height: 1.2,
                              wordSpacing: 1.9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Section 3 - Continue Button
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: MyConButton(
                        buttontext: 'Continue',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const relaxation_page(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
