import 'dart:convert';
import 'dart:math'; // Required for Random()
import 'package:crypto/crypto.dart';
import 'package:serverpod/server.dart';
import '../generated/protocol.dart';
import '../service/email_service.dart'; // Make sure this path is correct
import '../service/notification_service.dart'; // Make sure this path is correct

class AuthEndpoint extends Endpoint {
  
  String _hashPassword(String password) {
    var bytes = utf8.encode(password);
    return sha256.convert(bytes).toString();
  }

  // Single unified register method
  Future<bool> register(Session session, String email, String phoneNumber, String password) async {
    var otp = (100000 + Random().nextInt(900000)).toString();
    
   var user = UserInfo(
  email: email,
  phoneNumber: phoneNumber,
  passwordHash: _hashPassword(password),
  isVerified: false,
  otpCode: otp,
  otpExpiry: DateTime.now().add(const Duration(minutes: 5)),
  uniqueString: 'some_default_value', // ADD THIS LINE (use a unique ID or just a dummy string)
);
    
    await UserInfo.db.insertRow(session, user);

    try {
      await EmailService.sendOtpEmail(email, otp);
      await NotificationService.sendSms(phoneNumber, otp);
    } catch (e) {
      session.log('Notification error: $e');
    }
    
    return true;
  }

  Future<UserInfo?> login(Session session, String email, String password) async {
    var user = await UserInfo.db.findFirstRow(session, 
      where: (t) => t.email.equals(email)
    );

    if (user != null && user.passwordHash == _hashPassword(password)) {
      return user;
    }
    return null;
  }

  Future<bool> verifyOtp(Session session, String email, String enteredOtp) async {
    var user = await UserInfo.db.findFirstRow(session, where: (t) => t.email.equals(email));
    
    if (user != null && 
        user.otpCode == enteredOtp && 
        user.otpExpiry!.isAfter(DateTime.now())) {
        
      user.isVerified = true;
      user.otpCode = null; 
      await UserInfo.db.updateRow(session, user);
      return true;
    }
    return false;
  }
}