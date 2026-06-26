import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:serverpod/server.dart';
import '../generated/protocol.dart';

class AuthEndpoint extends Endpoint {
  
  // Helper to hash password
  String _hashPassword(String password) {
    var bytes = utf8.encode(password);
    return sha256.convert(bytes).toString();
  }

  Future<bool> register(Session session, String email, String password) async {
    var user = UserInfo(
      email: email,
      passwordHash: _hashPassword(password),
      isVerified: false,
      uniqueString: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    await UserInfo.db.insertRow(session, user);
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
}