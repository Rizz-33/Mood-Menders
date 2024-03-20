import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  @override
  _EmojiState createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  bool imageTapped = false;

  void recordEvent(String imagePath) {
  
    //String selectedImagePath = imagePath;

    setState(() {
      imageTapped = false;
    });
  }

  void checkImageTapped() {
    if (!imageTapped) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alert'),
            content: const Text('You have not selected any image.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Diary'),
      ),
      body: EmojiDisplay(recordEvent: recordEvent),
      floatingActionButton: FloatingActionButton(
        onPressed: checkImageTapped,
        child: const Icon(Icons.check),
      ),
    );
  }
}

class EmojiDisplay extends StatelessWidget {
  final Function recordEvent;

  EmojiDisplay({required this.recordEvent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (1).png');
              },
              child: Image.asset('lib/images/loveearth (1).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (2).png');
              },
              child: Image.asset('lib/images/loveearth (2).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (3).png');
              },
              child: Image.asset('lib/images/loveearth (3).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (4).png');
              },
              child: Image.asset('lib/images/loveearth (4).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (5).png');
              },
              child: Image.asset('lib/images/loveearth (5).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
      ],
    );
  }
}