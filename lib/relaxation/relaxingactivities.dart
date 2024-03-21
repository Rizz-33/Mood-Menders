import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class relaxingactivities_page extends StatefulWidget {
  const relaxingactivities_page({
    super.key,
  });

  @override
  State<relaxingactivities_page> createState() =>
      _relaxingactivities_pageState();
}

class _relaxingactivities_pageState extends State<relaxingactivities_page> {
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
                'RELAXATION ACTIVITIES',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 19,
                    fontWeight: FontWeight.w400),
              ),
              Image.asset(
                'lib/images/bg.png',
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
          //six boxes
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 175,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(251, 215, 225, 238),
                    border: Border.all(
                      color: const Color.fromARGB(255, 215, 225, 238),
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
                        'Go for walk \nto a park ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 175,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(251, 215, 225, 238),
                    border: Border.all(
                      color: const Color.fromARGB(255, 215, 225, 238),
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
                        'Self care in free \ntime',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 175,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 215, 225, 238),
                      border: Border.all(
                        color: const Color.fromARGB(255, 215, 225, 238),
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
                          'Feel waves \nin ocean',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 175,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 215, 225, 238),
                      border: Border.all(
                        color: const Color.fromARGB(255, 215, 225, 238),
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
                          'Enjoy \nOutside',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
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
                Container(
                  height: 175,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 215, 225, 238),
                      border: Border.all(
                        color: const Color.fromARGB(255, 215, 225, 238),
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
                          'Enjoy what \nyou have',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 175,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 215, 225, 238),
                      border: Border.all(
                        color: const Color.fromARGB(255, 215, 225, 238),
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
                          'Yoga as free \ntime activity',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
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
