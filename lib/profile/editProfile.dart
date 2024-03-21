import 'package:app/profile/button.dart';
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

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Implement the logic to update the user's profile
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
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
              Button(buttonText: 'Submit', onPressed: (){}, color: 'orange', enableIcon: false,)
            ],
          ),
        ),
      ),
    );
  }
}