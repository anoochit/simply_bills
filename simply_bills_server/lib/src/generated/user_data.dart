/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import 'protocol.dart' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class UserData extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  UserData._({
    int? id,
    required this.userInfoId,
    this.userInfo,
    this.address,
  }) : super(id);

  factory UserData({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    List<_i3.UserAddress>? address,
  }) = _UserDataImpl;

  factory UserData.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserData(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      address: (jsonSerialization['address'] as List?)
          ?.map((e) => _i3.UserAddress.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = UserDataTable();

  static const db = UserDataRepository._();

  int userInfoId;

  _i2.UserInfo? userInfo;

  List<_i3.UserAddress>? address;

  @override
  _i1.Table get table => t;

  UserData copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    List<_i3.UserAddress>? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (address != null)
        'address': address?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      if (address != null)
        'address': address?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static UserDataInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.UserAddressIncludeList? address,
  }) {
    return UserDataInclude._(
      userInfo: userInfo,
      address: address,
    );
  }

  static UserDataIncludeList includeList({
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDataTable>? orderByList,
    UserDataInclude? include,
  }) {
    return UserDataIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserData.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserData.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserDataImpl extends UserData {
  _UserDataImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    List<_i3.UserAddress>? address,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          address: address,
        );

  @override
  UserData copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    Object? address = _Undefined,
  }) {
    return UserData(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      address:
          address is List<_i3.UserAddress>? ? address : this.address?.clone(),
    );
  }
}

class UserDataTable extends _i1.Table {
  UserDataTable({super.tableRelation}) : super(tableName: 'user_data') {
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
  }

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  _i3.UserAddressTable? ___address;

  _i1.ManyRelation<_i3.UserAddressTable>? _address;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: UserData.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.UserAddressTable get __address {
    if (___address != null) return ___address!;
    ___address = _i1.createRelationTable(
      relationFieldName: '__address',
      field: UserData.t.id,
      foreignField: _i3.UserAddress.t.userId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserAddressTable(tableRelation: foreignTableRelation),
    );
    return ___address!;
  }

  _i1.ManyRelation<_i3.UserAddressTable> get address {
    if (_address != null) return _address!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'address',
      field: UserData.t.id,
      foreignField: _i3.UserAddress.t.userId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserAddressTable(tableRelation: foreignTableRelation),
    );
    _address = _i1.ManyRelation<_i3.UserAddressTable>(
      tableWithRelations: relationTable,
      table: _i3.UserAddressTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _address!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userInfoId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'address') {
      return __address;
    }
    return null;
  }
}

class UserDataInclude extends _i1.IncludeObject {
  UserDataInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.UserAddressIncludeList? address,
  }) {
    _userInfo = userInfo;
    _address = address;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.UserAddressIncludeList? _address;

  @override
  Map<String, _i1.Include?> get includes => {
        'userInfo': _userInfo,
        'address': _address,
      };

  @override
  _i1.Table get table => UserData.t;
}

class UserDataIncludeList extends _i1.IncludeList {
  UserDataIncludeList._({
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserData.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserData.t;
}

class UserDataRepository {
  const UserDataRepository._();

  final attach = const UserDataAttachRepository._();

  final attachRow = const UserDataAttachRowRepository._();

  Future<List<UserData>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDataTable>? orderByList,
    _i1.Transaction? transaction,
    UserDataInclude? include,
  }) async {
    return session.db.find<UserData>(
      where: where?.call(UserData.t),
      orderBy: orderBy?.call(UserData.t),
      orderByList: orderByList?.call(UserData.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserData?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDataTable>? orderByList,
    _i1.Transaction? transaction,
    UserDataInclude? include,
  }) async {
    return session.db.findFirstRow<UserData>(
      where: where?.call(UserData.t),
      orderBy: orderBy?.call(UserData.t),
      orderByList: orderByList?.call(UserData.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserData?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserDataInclude? include,
  }) async {
    return session.db.findById<UserData>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UserData>> insert(
    _i1.Session session,
    List<UserData> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserData>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserData> insertRow(
    _i1.Session session,
    UserData row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserData>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserData>> update(
    _i1.Session session,
    List<UserData> rows, {
    _i1.ColumnSelections<UserDataTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserData>(
      rows,
      columns: columns?.call(UserData.t),
      transaction: transaction,
    );
  }

  Future<UserData> updateRow(
    _i1.Session session,
    UserData row, {
    _i1.ColumnSelections<UserDataTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserData>(
      row,
      columns: columns?.call(UserData.t),
      transaction: transaction,
    );
  }

  Future<List<UserData>> delete(
    _i1.Session session,
    List<UserData> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserData>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserData> deleteRow(
    _i1.Session session,
    UserData row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserData>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserData>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserDataTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserData>(
      where: where(UserData.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserData>(
      where: where?.call(UserData.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserDataAttachRepository {
  const UserDataAttachRepository._();

  Future<void> address(
    _i1.Session session,
    UserData userData,
    List<_i3.UserAddress> userAddress,
  ) async {
    if (userAddress.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userAddress.id');
    }
    if (userData.id == null) {
      throw ArgumentError.notNull('userData.id');
    }

    var $userAddress =
        userAddress.map((e) => e.copyWith(userId: userData.id)).toList();
    await session.db.update<_i3.UserAddress>(
      $userAddress,
      columns: [_i3.UserAddress.t.userId],
    );
  }
}

class UserDataAttachRowRepository {
  const UserDataAttachRowRepository._();

  Future<void> userInfo(
    _i1.Session session,
    UserData userData,
    _i2.UserInfo userInfo,
  ) async {
    if (userData.id == null) {
      throw ArgumentError.notNull('userData.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $userData = userData.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<UserData>(
      $userData,
      columns: [UserData.t.userInfoId],
    );
  }

  Future<void> address(
    _i1.Session session,
    UserData userData,
    _i3.UserAddress userAddress,
  ) async {
    if (userAddress.id == null) {
      throw ArgumentError.notNull('userAddress.id');
    }
    if (userData.id == null) {
      throw ArgumentError.notNull('userData.id');
    }

    var $userAddress = userAddress.copyWith(userId: userData.id);
    await session.db.updateRow<_i3.UserAddress>(
      $userAddress,
      columns: [_i3.UserAddress.t.userId],
    );
  }
}
