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

abstract class JournalEntry implements _i1.SerializableModel {
  JournalEntry._({
    this.id,
    required this.userInfoId,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  factory JournalEntry({
    int? id,
    required int userInfoId,
    required String title,
    required String content,
    required DateTime createdAt,
  }) = _JournalEntryImpl;

  factory JournalEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return JournalEntry(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      title: jsonSerialization['title'] as String,
      content: jsonSerialization['content'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userInfoId;

  String title;

  String content;

  DateTime createdAt;

  /// Returns a shallow copy of this [JournalEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  JournalEntry copyWith({
    int? id,
    int? userInfoId,
    String? title,
    String? content,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'JournalEntry',
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      'title': title,
      'content': content,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _JournalEntryImpl extends JournalEntry {
  _JournalEntryImpl({
    int? id,
    required int userInfoId,
    required String title,
    required String content,
    required DateTime createdAt,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         title: title,
         content: content,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [JournalEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  JournalEntry copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    String? title,
    String? content,
    DateTime? createdAt,
  }) {
    return JournalEntry(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
