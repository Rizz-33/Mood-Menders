import 'package:app/chat/service/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  //email and password controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

  //tap to go to login page
  final void Function()? onTap;


  RegisterPage({super.key, required this.onTap});

  //register method
  void register(BuildContext context){
    //get auth service
    final _auth = AuthService();

    //only if the passwords are matching create user
    if (_passwordController.text == _passwordConfirmController.text) {
      try {
        _auth.signInWithEmailAndPassword(
        _emailController.text,
        _passwordController.text);
      } catch (e) {
        showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ));
      }
    }

    //show error if passwords are mismatch
    else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Passwords don't match!"),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80,),
              //logo
              Image.asset(
                'lib/images/logoblack.png',
                width: 300,
              ),

              const SizedBox(height: 40,),

              //welcome back message
              Text(
                "Let's create an account for you",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),

              const SizedBox(height: 20,),

              //email
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                
                obscureText: false,
                controller: _emailController,
              ),

              const SizedBox(height: 16,),

              //password
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
                controller: _passwordController,
              ),

              const SizedBox(height: 16,),

              //confirm password
              TextField(decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
                obscureText: true,
                controller: _passwordConfirmController,
              ),

              const SizedBox(height: 40,),

              //login button
              ElevatedButton(
                onPressed: () => register(context),
                child: Text('Register'),
              ),

              const SizedBox(height: 20,),

              //register now
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
    );
  }
}