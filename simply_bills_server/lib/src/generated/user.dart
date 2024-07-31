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

abstract class User extends _i1.TableRow implements _i1.ProtocolSerialization {
  User._({
    int? id,
    required this.userInfoId,
    this.userInfo,
    required this.name,
    this.address,
    this.telephone,
    this.email,
    required this.scope,
  }) : super(id);

  factory User({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    List<_i3.Address>? address,
    String? telephone,
    String? email,
    required _i3.UserScope scope,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      address: (jsonSerialization['address'] as List?)
          ?.map((e) => _i3.Address.fromJson((e as Map<String, dynamic>)))
          .toList(),
      telephone: jsonSerialization['telephone'] as String?,
      email: jsonSerialization['email'] as String?,
      scope: _i3.UserScope.fromJson((jsonSerialization['scope'] as String)),
    );
  }

  static final t = UserTable();

  static const db = UserRepository._();

  int userInfoId;

  _i2.UserInfo? userInfo;

  String name;

  List<_i3.Address>? address;

  String? telephone;

  String? email;

  _i3.UserScope scope;

  @override
  _i1.Table get table => t;

  User copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? name,
    List<_i3.Address>? address,
    String? telephone,
    String? email,
    _i3.UserScope? scope,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'name': name,
      if (address != null)
        'address': address?.toJson(valueToJson: (v) => v.toJson()),
      if (telephone != null) 'telephone': telephone,
      if (email != null) 'email': email,
      'scope': scope.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      'name': name,
      if (address != null)
        'address': address?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (telephone != null) 'telephone': telephone,
      if (email != null) 'email': email,
      'scope': scope.toJson(),
    };
  }

  static UserInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.AddressIncludeList? address,
  }) {
    return UserInclude._(
      userInfo: userInfo,
      address: address,
    );
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    List<_i3.Address>? address,
    String? telephone,
    String? email,
    required _i3.UserScope scope,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          name: name,
          address: address,
          telephone: telephone,
          email: email,
          scope: scope,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    String? name,
    Object? address = _Undefined,
    Object? telephone = _Undefined,
    Object? email = _Undefined,
    _i3.UserScope? scope,
  }) {
    return User(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      name: name ?? this.name,
      address: address is List<_i3.Address>? ? address : this.address?.clone(),
      telephone: telephone is String? ? telephone : this.telephone,
      email: email is String? ? email : this.email,
      scope: scope ?? this.scope,
    );
  }
}

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'user') {
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    telephone = _i1.ColumnString(
      'telephone',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    scope = _i1.ColumnEnum(
      'scope',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnString name;

  _i3.AddressTable? ___address;

  _i1.ManyRelation<_i3.AddressTable>? _address;

  late final _i1.ColumnString telephone;

  late final _i1.ColumnString email;

  late final _i1.ColumnEnum<_i3.UserScope> scope;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: User.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.AddressTable get __address {
    if (___address != null) return ___address!;
    ___address = _i1.createRelationTable(
      relationFieldName: '__address',
      field: User.t.id,
      foreignField: _i3.Address.t.$_userAddressUserId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AddressTable(tableRelation: foreignTableRelation),
    );
    return ___address!;
  }

  _i1.ManyRelation<_i3.AddressTable> get address {
    if (_address != null) return _address!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'address',
      field: User.t.id,
      foreignField: _i3.Address.t.$_userAddressUserId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AddressTable(tableRelation: foreignTableRelation),
    );
    _address = _i1.ManyRelation<_i3.AddressTable>(
      tableWithRelations: relationTable,
      table: _i3.AddressTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _address!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userInfoId,
        name,
        telephone,
        email,
        scope,
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

class UserInclude extends _i1.IncludeObject {
  UserInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.AddressIncludeList? address,
  }) {
    _userInfo = userInfo;
    _address = address;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.AddressIncludeList? _address;

  @override
  Map<String, _i1.Include?> get includes => {
        'userInfo': _userInfo,
        'address': _address,
      };

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  final attach = const UserAttachRepository._();

  final attachRow = const UserAttachRowRepository._();

  final detach = const UserDetachRepository._();

  final detachRow = const UserDetachRowRepository._();

  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findById<User>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<List<User>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserAttachRepository {
  const UserAttachRepository._();

  Future<void> address(
    _i1.Session session,
    User user,
    List<_i3.Address> address,
  ) async {
    if (address.any((e) => e.id == null)) {
      throw ArgumentError.notNull('address.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $address = address
        .map((e) => _i3.AddressImplicit(
              e,
              $_userAddressUserId: user.id,
            ))
        .toList();
    await session.db.update<_i3.Address>(
      $address,
      columns: [_i3.Address.t.$_userAddressUserId],
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  Future<void> userInfo(
    _i1.Session session,
    User user,
    _i2.UserInfo userInfo,
  ) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $user = user.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<User>(
      $user,
      columns: [User.t.userInfoId],
    );
  }

  Future<void> address(
    _i1.Session session,
    User user,
    _i3.Address address,
  ) async {
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $address = _i3.AddressImplicit(
      address,
      $_userAddressUserId: user.id,
    );
    await session.db.updateRow<_i3.Address>(
      $address,
      columns: [_i3.Address.t.$_userAddressUserId],
    );
  }
}

class UserDetachRepository {
  const UserDetachRepository._();

  Future<void> address(
    _i1.Session session,
    List<_i3.Address> address,
  ) async {
    if (address.any((e) => e.id == null)) {
      throw ArgumentError.notNull('address.id');
    }

    var $address = address
        .map((e) => _i3.AddressImplicit(
              e,
              $_userAddressUserId: null,
            ))
        .toList();
    await session.db.update<_i3.Address>(
      $address,
      columns: [_i3.Address.t.$_userAddressUserId],
    );
  }
}

class UserDetachRowRepository {
  const UserDetachRowRepository._();

  Future<void> address(
    _i1.Session session,
    _i3.Address address,
  ) async {
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $address = _i3.AddressImplicit(
      address,
      $_userAddressUserId: null,
    );
    await session.db.updateRow<_i3.Address>(
      $address,
      columns: [_i3.Address.t.$_userAddressUserId],
    );
  }
}
