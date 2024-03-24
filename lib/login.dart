import 'package:app/button.dart';
import 'package:app/chat/service/auth/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // Email, password, and username controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  // Tap to go to register page
  final void Function()? onTap;

  LoginPage({Key? key, required this.onTap});

  // Login method
  void login(BuildContext context) async {
    // Auth service
    final authService = AuthService();

    // Get text from controllers
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String username = _usernameController.text.trim();

    // Validate email format
    if (!_isEmailValid(email)) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Invalid Email'),
          content: Text('Please enter a valid email address.'),
        ),
      );
      return;
    }

    // Check if fields are empty
    if (email.isEmpty || password.isEmpty || username.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Empty Fields'),
          content: Text('Please fill in all fields.'),
        ),
      );
      return;
    }

    // Try log in
    try {
      // Sign in with email and password
      await authService.signInWithEmailPassword(email, password, username);

      // Save the username to Firestore
      if (username.isNotEmpty) {
        await authService.saveUsernameToFirestore(username);
      }

      // Navigate to the home screen or any other screen after successful login
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('An error occurred while trying to log in. Please try again later.'),
        ),
      );
    }
  }

  // Method to validate email format
  bool _isEmailValid(String email) {
    // Regular expression for email validation
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
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
                const SizedBox(height: 10),
                // Logo
                Image.asset(
                  'lib/images/leaf.png',
                  width: 100,
                ),
                const SizedBox(height: 40),
                // Welcome back message
                Text(
                  'Welcome back, Thrilled to have you here again.',
                  style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                ),
                const SizedBox(height: 20),
                // Username field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _usernameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '   Username',
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Email field
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
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password field
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
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyButton(
                    buttontext: 'Login',
                    onTap: () => login(context),
                  ),
                ),
                const SizedBox(height: 20),
                // Register now
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
