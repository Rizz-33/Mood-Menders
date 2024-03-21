import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewDiary2 extends StatelessWidget {
  const NewDiary2({Key? key}) : super(key: key);

  void saveDiary(String title, String description) async {
    try {
      await FirebaseFirestore.instance.collection('diary').add({
        'title': title,
        'description': description,
        'timestamp': DateTime.now(),
      });
      print('Data written to Firestore successfully');
    } catch (e) {
      print('Error writing to Firestore: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    String title = ''; // Store the entered title
    String description = ''; // Store the entered description

    return Scaffold(
      appBar: AppBar(
        title: Text('New Diary'),
      ),
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
                      style: TextStyle(
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
                        style: TextStyle(
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 15),
                    child: TextField(
                      onChanged: (value) {
                        // Update the 'title' variable with the entered text
                        title = value;
                      },
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
                        style: TextStyle(
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, top: 15, bottom: 15),
                    child: Container(
                      color: Colors.white,
                      height: 150,
                      child: TextField(
                        onChanged: (value) {
                          // Update the 'description' variable with the entered text
                          description = value;
                        },
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Save the entered title and description to Firestore
                      saveDiary(title, description);
                      // Navigate back to the previous screen
                      Navigator.pop(context);
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
