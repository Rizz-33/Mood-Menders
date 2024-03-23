import 'package:app/main.dart';
import 'package:app/profile/button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  final _formKey = GlobalKey<FormState>();
  String _friendEmail = '';

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        queryParameters: {
          'to': _friendEmail,
          'subject': 'Invitation to join',
          'body': 'Hey, I would like to invite you to join...',
        },
      );

      try {
        if (await canLaunch(emailLaunchUri.toString())) {
          await launch(emailLaunchUri.toString());
        } else {
          throw 'Could not launch $emailLaunchUri';
        }
      } catch (e) {
        print('Error launching URL: $e');
        // Show error message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to open email app. Please try again later.'),
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
        title: Text('Invite Friends'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Theme(
          data: Theme.of(context).copyWith(
            cardColor: primaryColor,
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: primaryColor),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    labelText: 'Friend\'s Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your friend\'s email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _friendEmail = value!;
                  },
                ),
                SizedBox(height: 32),
                Button(
                  buttonText: 'Submit',
                  onPressed: _submit,
                  color: 'orange',
                  enableIcon: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
