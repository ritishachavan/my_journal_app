/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class UserInfo implements _i1.SerializableModel {
  UserInfo._({
    this.id,
    this.email,
    this.phoneNumber,
    required this.passwordHash,
    required this.uniqueString,
    required this.isVerified,
    this.otpCode,
    this.otpExpiry,
  });

  factory UserInfo({
    int? id,
    String? email,
    String? phoneNumber,
    required String passwordHash,
    required String uniqueString,
    required bool isVerified,
    String? otpCode,
    DateTime? otpExpiry,
  }) = _UserInfoImpl;

  factory UserInfo.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserInfo(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String?,
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      passwordHash: jsonSerialization['passwordHash'] as String,
      uniqueString: jsonSerialization['uniqueString'] as String,
      isVerified: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['isVerified'],
      ),
      otpCode: jsonSerialization['otpCode'] as String?,
      otpExpiry: jsonSerialization['otpExpiry'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['otpExpiry']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? email;

  String? phoneNumber;

  String passwordHash;

  String uniqueString;

  bool isVerified;

  String? otpCode;

  DateTime? otpExpiry;

  /// Returns a shallow copy of this [UserInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserInfo copyWith({
    int? id,
    String? email,
    String? phoneNumber,
    String? passwordHash,
    String? uniqueString,
    bool? isVerified,
    String? otpCode,
    DateTime? otpExpiry,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserInfo',
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      'passwordHash': passwordHash,
      'uniqueString': uniqueString,
      'isVerified': isVerified,
      if (otpCode != null) 'otpCode': otpCode,
      if (otpExpiry != null) 'otpExpiry': otpExpiry?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserInfoImpl extends UserInfo {
  _UserInfoImpl({
    int? id,
    String? email,
    String? phoneNumber,
    required String passwordHash,
    required String uniqueString,
    required bool isVerified,
    String? otpCode,
    DateTime? otpExpiry,
  }) : super._(
         id: id,
         email: email,
         phoneNumber: phoneNumber,
         passwordHash: passwordHash,
         uniqueString: uniqueString,
         isVerified: isVerified,
         otpCode: otpCode,
         otpExpiry: otpExpiry,
       );

  /// Returns a shallow copy of this [UserInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserInfo copyWith({
    Object? id = _Undefined,
    Object? email = _Undefined,
    Object? phoneNumber = _Undefined,
    String? passwordHash,
    String? uniqueString,
    bool? isVerified,
    Object? otpCode = _Undefined,
    Object? otpExpiry = _Undefined,
  }) {
    return UserInfo(
      id: id is int? ? id : this.id,
      email: email is String? ? email : this.email,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      passwordHash: passwordHash ?? this.passwordHash,
      uniqueString: uniqueString ?? this.uniqueString,
      isVerified: isVerified ?? this.isVerified,
      otpCode: otpCode is String? ? otpCode : this.otpCode,
      otpExpiry: otpExpiry is DateTime? ? otpExpiry : this.otpExpiry,
    );
  }
}
