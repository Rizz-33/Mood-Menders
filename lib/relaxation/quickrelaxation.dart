import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class quickrelaxation_page extends StatefulWidget {
  const quickrelaxation_page({
    super.key,
  });

  @override
  State<quickrelaxation_page> createState() => _quickrelaxation_pageState();
}

class _quickrelaxation_pageState extends State<quickrelaxation_page> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'QUICK RELAXATION',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Image.asset(
                  'lib/images/leaf.png',
                  height: 72,
                )
              ],
            ),
          ),
          titleSpacing: 4.0,
          toolbarHeight: 65,
          toolbarOpacity: 0.9,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18)),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0.00,
          backgroundColor: const Color.fromARGB(255, 134, 208, 203),
        ),
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
            child: Column(children: [
          //story 01
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 235, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Deep Breathing',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/6.png',
                            height: 45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Take a few moments to focus on your breath. \nInhale deeply through your nose, hold for a few \nseconds, and exhale slowly through your mouth.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
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
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //story 02
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 235, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Stretching ',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/10.png',
                            height: 55,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Stand up and do a quick stretching routine to \nrelease tension in your muscles. Reach for the sky, \ntouch your toes, and gently rotate your shoulders.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
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
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //story 03
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 235, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Soothing Music or Sounds',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/9.png',
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Put on calming music or listen to nature sounds. \nClose your eyes and let the sounds wash over you.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
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
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //story 04
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 235, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Counting Breaths',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/8.png',
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Inhale slowly for a count of four, hold for a count \nof four, and exhale for a count of four. Repeat \nseveral times.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
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
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //story 05
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 235, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Mindful Observation ',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/7.png',
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Take a moment to really notice your surroundings. \nPay attention to the colors, shapes, and textures \nof the objects around you.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
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
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ])));
  }
}
