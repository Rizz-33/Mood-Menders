import 'package:app/diary/appBarD.dart';
import 'package:app/diary/emojiD.dart';
import 'package:app/diary/gradientButton.dart';
import 'package:app/diary/newDiary2.dart';
import 'package:app/diary/newdiaryButton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDiary extends StatelessWidget {
  const NewDiary({Key? key}) : super(key: key);

  void recordEvent(String imagePath) {
    if (kDebugMode) {
      print('Image at $imagePath was tapped');
    }
  
  }

  void handleButtonPress(String buttonText) {
    if (kDebugMode) {
      print('Button $buttonText was pressed');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const CustomAppBar(),
          body: Container(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                    child: Text(
                      'What is your mood today?',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  EmojiDisplay(recordEvent: recordEvent),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 15),
                    child: Text(
                      'Emotions',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Excited', buttonText: 'Excited'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Proud', buttonText: 'Proud'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Lonely', buttonText: 'Lonely'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Stressed', buttonText: 'Stressed'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Joyful', buttonText: 'Joyful'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Annoyed', buttonText: 'Annoyed'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Happy', buttonText: 'Happy'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Angry', buttonText: 'Angry'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: EmotionButton('Tired', buttonText: 'Tired'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,),
                    child: Text(
                      'Sphere of life',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 26.0, left: 26.0),
                          child: Image.asset('lib/images/edu.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/love.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/famliy.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/health.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/personal.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/finance.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/friends.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Image.asset('lib/images/leisure.png', fit: BoxFit.scaleDown),
                        ),
                      ),
                    ],
                  ),
                  GradientButton(
                    buttonText: 'Continue',
                    enableIcon: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NewDiary2()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
