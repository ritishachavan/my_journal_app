import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dotenv/dotenv.dart';

// Initialize and load the .env file
final env = DotEnv()..load(['.env']);

class NotificationService {
  static final String accountSid = env['TWILIO_ACCOUNT_SID'] ?? '';
  static final String authToken = env['AUTH_TOKEN'] ?? '';
  static const String fromNumber = '+17655076915'; // Your Twilio number

  static Future<void> sendSms(String toNumber, String otp) async {
    final url = Uri.parse(
        'https://api.twilio.com/2010-04-01/Accounts/$accountSid/Messages.json');

    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Basic ${base64Encode(utf8.encode('$accountSid:$authToken'))}',
      },
      body: {
        'From': fromNumber,
        'To': toNumber,
        'Body': 'Your verification code is: $otp',
      },
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to send SMS: ${response.body}');
    }
  }
}