import 'package:app/components/button.dart';
import 'package:app/meditaionmethods.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class walkingstep11_page extends StatefulWidget {
  const walkingstep11_page({
    super.key,
  });

  @override
  State<walkingstep11_page> createState() => _walkingstep11_pageState();
}

class _walkingstep11_pageState extends State<walkingstep11_page> {
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
                'WALKING MEDITATION',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 18,
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
        backgroundColor: Color.fromARGB(255, 134, 208, 203),
      ),
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //image
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //image
                    Image.asset(
                      'lib/images/step13.png',
                      height: 210,
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          'You have successfully completed Walking meditation',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 16,
                              height: 1.2,
                              wordSpacing: 2.5,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            //para
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          'Remember, walking meditation is a flexible practice. You can adapt it to suit your preferences. It is about being present and mindful in the act of walking, no matter the pace or location. With regular practice, walking meditation is become a valuable tool for grounding, relaxation, mindfulness.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              height: 1.2,
                              wordSpacing: 2.5,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            //continue button
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MyButton(
                buttontext: 'Back to home page',
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (meditaionmethods_page())),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
