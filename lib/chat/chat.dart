import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatelessWidget {
  final String name;

  const Chat({Key? key, required this.name}) : super(key: key);

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
          child: Row(children: [
            Image.asset('lib/images/loveearth (1).png', width: 40,),
            const SizedBox(width: 20),
            Text(
              name,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                color: const Color.fromARGB(255, 70, 66, 68),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],)
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
        elevation: 5.0,
        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
      ),
      body: Container(
        color:const Color.fromARGB(255, 225, 255, 253),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/sloveearth (1).png', width: 80,),
              Padding(
                padding: const EdgeInsets.only(top :10.0),
                child: Text(name, style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  color: const Color.fromARGB(255, 70, 66, 68),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,),
                ),
              ),
              const Text('Lorem ipsum dollar')
            ],
          ),
        ),
      ),
    );
  }
}