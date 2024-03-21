import 'package:app/breathawareness/breathawarenessmed.dart';
import 'package:app/guidedvisualization.dart';
import 'package:app/lovekindnessmed/loving-kindnessmed.dart';
import 'package:app/mindfulness/mindfulnessmed.dart';
import 'package:app/movementmed.dart';
import 'package:app/walkingmed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class meditaionmethods_page extends StatefulWidget {
  const meditaionmethods_page({
    super.key,
  });

  @override
  State<meditaionmethods_page> createState() => _meditaionmethods_pageState();
}

class _meditaionmethods_pageState extends State<meditaionmethods_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'MEDITATION METHODS ',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 19,
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
          //first two boxes
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const mindfulnessmed_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: const Color.fromARGB(255, 175, 213, 210),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //image
                          Image.asset(
                            'lib/images/med1.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Mindfulness \nMeditation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const breathawarenessmed_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: const Color.fromARGB(255, 175, 213, 210),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //image
                          Image.asset(
                            'lib/images/m2.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Breath Awareness \nMeditation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const guidedvis_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: const Color.fromARGB(255, 175, 213, 210),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //image
                          Image.asset(
                            'lib/images/med3.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Guided \nVisualization',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const lovekindmed_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: const Color.fromARGB(255, 175, 213, 210),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //image
                          Image.asset(
                            'lib/images/med4.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Loving-Kindness \nMeditation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const movementmed_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: const Color.fromARGB(255, 175, 213, 210),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //image
                          Image.asset(
                            'lib/images/med5.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Movement-Based  \nMeditation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const walkingmed_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: const Color.fromARGB(255, 175, 213, 210),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //image
                          Image.asset(
                            'lib/images/med6.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Walking \nMeditation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
