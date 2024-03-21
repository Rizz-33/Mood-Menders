import 'package:app/button.dart';
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
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                //logo
                Image.asset(
                  'lib/images/leaf.png',
                  width: 100,
                ),
        
                const SizedBox(height: 40,),
        
                //welcome back message
                Text(
                  'Welcome back, Thrilled to have you here again.',
                  style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                ),
        
                const SizedBox(height: 20,),
        
                //email
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
        ),),
                ),
        
                const SizedBox(height: 16,),
        
                //password
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
                          ),),
                ),
        
                const SizedBox(height: 40,),
        
                //login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyButton(buttontext: 'Login', onTap: () => login(context),)
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
      ),
    );
  }
}