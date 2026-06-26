import 'package:flutter/material.dart';
import 'package:my_journal_app_client/my_journal_app_client.dart'; // Adjust if your client package name differs
import 'otp_verification_screen.dart';

class SignInScreen extends StatefulWidget {
  final Client client;
  const SignInScreen({super.key, required this.client});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _submit() async {
    try {
      bool success = await widget.client.auth.register(
        _emailController.text,
        _phoneController.text,
        _passwordController.text,
      );

      if (success && mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpVerificationScreen(
              client: widget.client,
              email: _emailController.text,
            ),
          ),
        );
      }
    } catch (e) {
      debugPrint('Registration error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Column(
        children: [
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: "Email"),
          ),
          TextField(
            controller: _phoneController,
            decoration: const InputDecoration(labelText: 'Phone Number (e.g. +14155552671)'),
            keyboardType: TextInputType.phone,
          ),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: _submit,
            child: const Text("Register"),
          ),
        ],
      ),
    );
  }
}