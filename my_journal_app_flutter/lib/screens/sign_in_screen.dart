import 'package:flutter/material.dart';
import 'package:my_journal_app_client/my_journal_app_client.dart';
import '../journal_page.dart'; // Or 'screens/journal_page.dart' if it is in that folder

class SignInScreen extends StatefulWidget {
  final Client client;
  const SignInScreen({super.key, required this.client});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isRegistering = true; // Toggle between Login/Register

  Future<void> _submit() async {
  try {
    if (_isRegistering) {
      await widget.client.auth.register(_emailController.text, _passwordController.text);
      // Optional: Show a snackbar saying "Registration successful, please login"
    } else {
      var user = await widget.client.auth.login(_emailController.text, _passwordController.text);
      
      if (user != null) {
        // --- PUT THE NAVIGATION CODE HERE ---
        if (!mounted) return; // Always good practice in Flutter
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(
            builder: (context) => JournalPage(
              client: widget.client, 
              userId: user.id!,
            ),
          ),
        );
      } else {
        print("Login failed.");
      }
    }
  } catch (e) {
    print("Error: $e");
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isRegistering ? "Register" : "Sign In")),
      body: Column(
        children: [
          TextField(controller: _emailController, decoration: const InputDecoration(hintText: "Email")),
          TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(hintText: "Password")),
          ElevatedButton(onPressed: _submit, child: Text(_isRegistering ? "Register" : "Login")),
          TextButton(
            onPressed: () => setState(() => _isRegistering = !_isRegistering),
            child: Text(_isRegistering ? "Already have an account? Login" : "Need an account? Register"),
          ),
        ],
      ),
    );
  }
}