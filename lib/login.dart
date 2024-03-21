import 'package:app/chat/service/auth/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //email and password controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  //login method
  void login(BuildContext context) async {
    //auth service
    final authService = AuthService();

    //try log in
    try {
      await authService.signInWithEmailPassword(_emailController.text, _passwordController.text,);
    }

    //catch any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
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
              const SizedBox(height: 120,),
              //logo
              Image.asset(
                'lib/images/logoblack.png',
                width: 300,
              ),

              const SizedBox(height: 40,),

              //welcome back message
              Text(
                'Welcome back, Thrilled to have you here again.',
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

              const SizedBox(height: 40,),

              //login button
              ElevatedButton(
                onPressed: () => login(context),
                child: Text('Login'),
              ),


              const SizedBox(height: 20,),

              //register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      '  Register now',
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