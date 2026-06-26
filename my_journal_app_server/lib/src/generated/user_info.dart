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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class UserInfo
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = UserInfoTable();

  static const db = UserInfoRepository._();

  @override
  int? id;

  String? email;

  String? phoneNumber;

  String passwordHash;

  String uniqueString;

  bool isVerified;

  String? otpCode;

  DateTime? otpExpiry;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static UserInfoInclude include() {
    return UserInfoInclude._();
  }

  static UserInfoIncludeList includeList({
    _i1.WhereExpressionBuilder<UserInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInfoTable>? orderByList,
    UserInfoInclude? include,
  }) {
    return UserInfoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserInfo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserInfo.t),
      include: include,
    );
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

class UserInfoUpdateTable extends _i1.UpdateTable<UserInfoTable> {
  UserInfoUpdateTable(super.table);

  _i1.ColumnValue<String, String> email(String? value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> phoneNumber(String? value) => _i1.ColumnValue(
    table.phoneNumber,
    value,
  );

  _i1.ColumnValue<String, String> passwordHash(String value) => _i1.ColumnValue(
    table.passwordHash,
    value,
  );

  _i1.ColumnValue<String, String> uniqueString(String value) => _i1.ColumnValue(
    table.uniqueString,
    value,
  );

  _i1.ColumnValue<bool, bool> isVerified(bool value) => _i1.ColumnValue(
    table.isVerified,
    value,
  );

  _i1.ColumnValue<String, String> otpCode(String? value) => _i1.ColumnValue(
    table.otpCode,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> otpExpiry(DateTime? value) =>
      _i1.ColumnValue(
        table.otpExpiry,
        value,
      );
}

class UserInfoTable extends _i1.Table<int?> {
  UserInfoTable({super.tableRelation}) : super(tableName: 'user_info') {
    updateTable = UserInfoUpdateTable(this);
    email = _i1.ColumnString(
      'email',
      this,
    );
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    passwordHash = _i1.ColumnString(
      'passwordHash',
      this,
    );
    uniqueString = _i1.ColumnString(
      'uniqueString',
      this,
    );
    isVerified = _i1.ColumnBool(
      'isVerified',
      this,
    );
    otpCode = _i1.ColumnString(
      'otpCode',
      this,
    );
    otpExpiry = _i1.ColumnDateTime(
      'otpExpiry',
      this,
    );
  }

  late final UserInfoUpdateTable updateTable;

  late final _i1.ColumnString email;

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString passwordHash;

  late final _i1.ColumnString uniqueString;

  late final _i1.ColumnBool isVerified;

  late final _i1.ColumnString otpCode;

  late final _i1.ColumnDateTime otpExpiry;

  @override
  List<_i1.Column> get columns => [
    id,
    email,
    phoneNumber,
    passwordHash,
    uniqueString,
    isVerified,
    otpCode,
    otpExpiry,
  ];
}

class UserInfoInclude extends _i1.IncludeObject {
  UserInfoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => UserInfo.t;
}

class UserInfoIncludeList extends _i1.IncludeList {
  UserInfoIncludeList._({
    _i1.WhereExpressionBuilder<UserInfoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserInfo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => UserInfo.t;
}

class UserInfoRepository {
  const UserInfoRepository._();

  /// Returns a list of [UserInfo]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<UserInfo>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInfoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<UserInfo>(
      where: where?.call(UserInfo.t),
      orderBy: orderBy?.call(UserInfo.t),
      orderByList: orderByList?.call(UserInfo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [UserInfo] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<UserInfo?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserInfoTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInfoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<UserInfo>(
      where: where?.call(UserInfo.t),
      orderBy: orderBy?.call(UserInfo.t),
      orderByList: orderByList?.call(UserInfo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [UserInfo] by its [id] or null if no such row exists.
  Future<UserInfo?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<UserInfo>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [UserInfo]s in the list and returns the inserted rows.
  ///
  /// The returned [UserInfo]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<UserInfo>> insert(
    _i1.DatabaseSession session,
    List<UserInfo> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<UserInfo>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [UserInfo] and returns the inserted row.
  ///
  /// The returned [UserInfo] will have its `id` field set.
  Future<UserInfo> insertRow(
    _i1.DatabaseSession session,
    UserInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [UserInfo]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<UserInfo>> update(
    _i1.DatabaseSession session,
    List<UserInfo> rows, {
    _i1.ColumnSelections<UserInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserInfo>(
      rows,
      columns: columns?.call(UserInfo.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserInfo]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserInfo> updateRow(
    _i1.DatabaseSession session,
    UserInfo row, {
    _i1.ColumnSelections<UserInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserInfo>(
      row,
      columns: columns?.call(UserInfo.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserInfo] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<UserInfo?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<UserInfoUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<UserInfo>(
      id,
      columnValues: columnValues(UserInfo.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserInfo]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<UserInfo>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<UserInfoUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UserInfoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInfoTable>? orderBy,
    _i1.OrderByListBuilder<UserInfoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<UserInfo>(
      columnValues: columnValues(UserInfo.t.updateTable),
      where: where(UserInfo.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserInfo.t),
      orderByList: orderByList?.call(UserInfo.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [UserInfo]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<UserInfo>> delete(
    _i1.DatabaseSession session,
    List<UserInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [UserInfo].
  Future<UserInfo> deleteRow(
    _i1.DatabaseSession session,
    UserInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<UserInfo>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UserInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserInfo>(
      where: where(UserInfo.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserInfoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserInfo>(
      where: where?.call(UserInfo.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [UserInfo] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UserInfoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<UserInfo>(
      where: where(UserInfo.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
