import 'package:app/button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({Key? key, required this.onTap});

  String? selectedAvatar; // Store the selected avatar image path

  Future<void> register(BuildContext context) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    if (selectedAvatar == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Please select an avatar!"),
        ),
      );
      return;
    }

    if (_passwordController.text == _passwordConfirmController.text) {
      // Check if the username is unique
      QuerySnapshot usernameCheck = await _firestore.collection('Users').where('username', isEqualTo: _usernameController.text).get();
      if (usernameCheck.docs.isNotEmpty) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Username already exists!"),
          ),
        );
        return;
      }

      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        await userCredential.user!.updateDisplayName(_usernameController.text);

        await _firestore.collection('Users').doc(userCredential.user!.uid).set({
          'username': _usernameController.text, // Change 'name' to 'username'
          'email': _emailController.text,
          'password': _passwordController.text,
          'avatar': selectedAvatar,
        });
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Passwords don't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Image.asset(
                  'lib/images/leaf.png',
                  width: 100,
                ),
                const SizedBox(height: 40,),
                Text(
                  "Welcome! Let's Mend Your Moods...",
                  style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i <= 5; i++)
                      GestureDetector(
                        onTap: () {
                          selectedAvatar = 'lib/images/loveearth ($i).png';
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: selectedAvatar == 'lib/images/loveearth ($i).png' ? Colors.blue : Colors.transparent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'lib/images/loveearth ($i).png',
                              width: 50,
                            ),
                          ),
                        ),
                      ),

                  ],
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _usernameController, // Change _nameController to _usernameController
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '   Username', // Change hint text
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _emailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '   Email',
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '   Password',
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _passwordConfirmController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '   Confirm Password',
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyButton(buttontext: 'Register', onTap: () => register(context),)
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(color: Colors.grey[700]),

                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Text(
                        '  Login now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
