import 'package:flutter/material.dart';
import 'package:my_journal_app_client/my_journal_app_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'screens/sign_in_screen.dart'; // Import your sign-in screen

// 1. Initialize the Client
var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInScreen(client: client), // Pass the client here!
    );
  }
}