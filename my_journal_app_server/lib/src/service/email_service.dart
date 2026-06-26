import 'package:mailer/mailer.dart';
import 'package:dotenv/dotenv.dart';

// Initialize and load the .env file
final env = DotEnv()..load(['.env']);
import 'package:mailer/smtp_server.dart';

class EmailService {
  static Future<void> sendOtpEmail(String email, String otp) async {
    final smtpServer = SmtpServer(
      'smtp.sendgrid.net',
      username: 'apikey',
      password: env['SENDGRID_API_KEY'] ?? '',
      port: 587,
    );

    final message = Message()
      ..from = const Address('your-verified-email@yourdomain.com', 'My Journal App')
      ..recipients.add(email)
      ..subject = 'Your Verification Code'
      ..text = 'Your OTP is: $otp';

    try {
      await send(message, smtpServer);
    } catch (e) {
      print('Error sending email: $e');
    }
  }
}