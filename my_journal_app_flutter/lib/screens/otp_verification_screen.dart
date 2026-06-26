import 'package:flutter/material.dart';
import 'package:my_journal_app_client/my_journal_app_client.dart';

class OtpVerificationScreen extends StatefulWidget {
  final Client client;
  final String email;

  const OtpVerificationScreen({super.key, required this.client, required this.email});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _otpController = TextEditingController();

  Future<void> _verify() async {
    // Call the verifyOtp endpoint we wrote earlier
    bool isVerified = await widget.client.auth.verifyOtp(
      widget.email,
      _otpController.text,
    );

    if (isVerified) {
      if (!mounted) return;
      // Navigate to your Home Screen
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Verification Successful!")),
      );
    } else {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid or expired OTP.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify OTP")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _otpController,
              decoration: const InputDecoration(labelText: "Enter 6-digit OTP"),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: _verify,
            child: const Text("Verify"),
          ),
        ],
      ),
    );
  }
}