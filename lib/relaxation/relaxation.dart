import 'package:app/meditaionmethods.dart';
import 'package:app/relaxation/aroma.dart';
import 'package:app/relaxation/quickrelaxation.dart';
import 'package:app/relaxation/relaxingactivities.dart';
import 'package:app/stressreducetips.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class relaxation_page extends StatefulWidget {
  const relaxation_page({
    super.key,
  });

  @override
  State<relaxation_page> createState() => _relaxation_pageState();
}

class _relaxation_pageState extends State<relaxation_page> {
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
                'RELAXATION',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 22,
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
                          builder: (context) => const meditaionmethods_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 213, 210),
                        border: Border.all(
                          color: Color.fromARGB(255, 175, 213, 210),
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
                            'lib/images/relax1.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Medication \nMethods',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
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
                          builder: (context) => const Aromatherapy_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 213, 210),
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
                            'lib/images/relax2.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Aromatherapy \nRecommendations',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
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
                          builder: (context) => const meditaionmethods_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 213, 210),
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
                            'lib/images/relax3.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Listen to  \nMusic',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
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
                          builder: (context) => const quickrelaxation_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 213, 210),
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
                            'lib/images/relax4.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Quick  \nRelaxation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
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
                          builder: (context) => const stressreducetips_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 213, 210),
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
                            'lib/images/relax5.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Stress-Reduction  \nTips',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
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
                              const relaxingactivities_page()),
                    );
                  },
                  child: Container(
                    height: 175,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 213, 210),
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
                            'lib/images/relax6.png',
                            height: 90,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //message
                          Text(
                            'Relaxing  \nActivities',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
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
