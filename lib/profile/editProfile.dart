import 'package:app/profile/button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  String? _selectedAvatar; // Store the selected avatar image path

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        // Get the current user
        User? user = FirebaseAuth.instance.currentUser;

        // Check if the user is authenticated
        if (user != null) {
          String uid = user.uid;

          // Update Firestore database with user's profile data
          await FirebaseFirestore.instance.collection('Users').doc(uid).update({
            'name': _name,
            'email': _email,
            'password': _password,
            'avatar': _selectedAvatar,
          });

          // Show success message dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Success'),
                content: Text('Submitted Successfully!'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        } else {
          // Show error message if user is not authenticated
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text('User not authenticated.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        // Show error message dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Error: $e'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // Avatar Selection UI
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i <= 5; i++)
                      GestureDetector(
                        onTap: () {
                          // Set the selected avatar image path
                          setState(() {
                            _selectedAvatar = 'lib/images/loveearth ($i).png';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/images/loveearth ($i).png',
                            width: 50,
                            // Highlight the selected avatar
                            color: _selectedAvatar == 'lib/images/loveearth ($i).png'
                                ? Color.fromARGB(255, 28, 186, 197)
                                : null,
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 20),
                TextFormField(
                  cursorColor: Color.fromARGB(255, 70, 66, 68),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    focusColor: Color.fromARGB(255, 70, 66, 68),
                    labelStyle: TextStyle(color: Color.fromARGB(255, 70, 66, 68)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 70, 66, 68)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  cursorColor: Color.fromARGB(255, 70, 66, 68),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    focusColor: Color.fromARGB(255, 70, 66, 68),
                    labelStyle: TextStyle(color: Color.fromARGB(255, 70, 66, 68)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 70, 66, 68)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  cursorColor: Color.fromARGB(255, 70, 66, 68),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    focusColor: Color.fromARGB(255, 70, 66, 68),
                    labelStyle: TextStyle(color: Color.fromARGB(255, 70, 66, 68)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 70, 66, 68)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 32,),
                Button(buttonText: 'Submit', onPressed: _submit, color: 'orange', enableIcon: false,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
