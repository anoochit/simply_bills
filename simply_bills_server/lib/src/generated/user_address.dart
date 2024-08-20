/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class UserAddress extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  UserAddress._({
    int? id,
    required this.userId,
    this.user,
    required this.addressId,
    this.address,
  }) : super(id);

  factory UserAddress({
    int? id,
    required int userId,
    _i2.UserData? user,
    required int addressId,
    _i2.Address? address,
  }) = _UserAddressImpl;

  factory UserAddress.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserAddress(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserData.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      addressId: jsonSerialization['addressId'] as int,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
    );
  }

  static final t = UserAddressTable();

  static const db = UserAddressRepository._();

  int userId;

  _i2.UserData? user;

  int addressId;

  _i2.Address? address;

  @override
  _i1.Table get table => t;

  UserAddress copyWith({
    int? id,
    int? userId,
    _i2.UserData? user,
    int? addressId,
    _i2.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'addressId': addressId,
      if (address != null) 'address': address?.toJsonForProtocol(),
    };
  }

  static UserAddressInclude include({
    _i2.UserDataInclude? user,
    _i2.AddressInclude? address,
  }) {
    return UserAddressInclude._(
      user: user,
      address: address,
    );
  }

  static UserAddressIncludeList includeList({
    _i1.WhereExpressionBuilder<UserAddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserAddressTable>? orderByList,
    UserAddressInclude? include,
  }) {
    return UserAddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserAddress.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserAddress.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserAddressImpl extends UserAddress {
  _UserAddressImpl({
    int? id,
    required int userId,
    _i2.UserData? user,
    required int addressId,
    _i2.Address? address,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          addressId: addressId,
          address: address,
        );

  @override
  UserAddress copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? addressId,
    Object? address = _Undefined,
  }) {
    return UserAddress(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserData? ? user : this.user?.copyWith(),
      addressId: addressId ?? this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
    );
  }
}

class UserAddressTable extends _i1.Table {
  UserAddressTable({super.tableRelation}) : super(tableName: 'user_address') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    addressId = _i1.ColumnInt(
      'addressId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserDataTable? _user;

  late final _i1.ColumnInt addressId;

  _i2.AddressTable? _address;

  _i2.UserDataTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UserAddress.t.userId,
      foreignField: _i2.UserData.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserDataTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i2.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: UserAddress.t.addressId,
      foreignField: _i2.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        addressId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'address') {
      return address;
    }
    return null;
  }
}

class UserAddressInclude extends _i1.IncludeObject {
  UserAddressInclude._({
    _i2.UserDataInclude? user,
    _i2.AddressInclude? address,
  }) {
    _user = user;
    _address = address;
  }

  _i2.UserDataInclude? _user;

  _i2.AddressInclude? _address;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'address': _address,
      };

  @override
  _i1.Table get table => UserAddress.t;
}

class UserAddressIncludeList extends _i1.IncludeList {
  UserAddressIncludeList._({
    _i1.WhereExpressionBuilder<UserAddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserAddress.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserAddress.t;
}

class UserAddressRepository {
  const UserAddressRepository._();

  final attachRow = const UserAddressAttachRowRepository._();

  Future<List<UserAddress>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserAddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserAddressTable>? orderByList,
    _i1.Transaction? transaction,
    UserAddressInclude? include,
  }) async {
    return session.db.find<UserAddress>(
      where: where?.call(UserAddress.t),
      orderBy: orderBy?.call(UserAddress.t),
      orderByList: orderByList?.call(UserAddress.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserAddress?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserAddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserAddressTable>? orderByList,
    _i1.Transaction? transaction,
    UserAddressInclude? include,
  }) async {
    return session.db.findFirstRow<UserAddress>(
      where: where?.call(UserAddress.t),
      orderBy: orderBy?.call(UserAddress.t),
      orderByList: orderByList?.call(UserAddress.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserAddress?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserAddressInclude? include,
  }) async {
    return session.db.findById<UserAddress>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UserAddress>> insert(
    _i1.Session session,
    List<UserAddress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserAddress>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserAddress> insertRow(
    _i1.Session session,
    UserAddress row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserAddress>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserAddress>> update(
    _i1.Session session,
    List<UserAddress> rows, {
    _i1.ColumnSelections<UserAddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserAddress>(
      rows,
      columns: columns?.call(UserAddress.t),
      transaction: transaction,
    );
  }

  Future<UserAddress> updateRow(
    _i1.Session session,
    UserAddress row, {
    _i1.ColumnSelections<UserAddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserAddress>(
      row,
      columns: columns?.call(UserAddress.t),
      transaction: transaction,
    );
  }

  Future<List<UserAddress>> delete(
    _i1.Session session,
    List<UserAddress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserAddress>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserAddress> deleteRow(
    _i1.Session session,
    UserAddress row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserAddress>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserAddress>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserAddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserAddress>(
      where: where(UserAddress.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserAddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserAddress>(
      where: where?.call(UserAddress.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserAddressAttachRowRepository {
  const UserAddressAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    UserAddress userAddress,
    _i2.UserData user,
  ) async {
    if (userAddress.id == null) {
      throw ArgumentError.notNull('userAddress.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userAddress = userAddress.copyWith(userId: user.id);
    await session.db.updateRow<UserAddress>(
      $userAddress,
      columns: [UserAddress.t.userId],
    );
  }

  Future<void> address(
    _i1.Session session,
    UserAddress userAddress,
    _i2.Address address,
  ) async {
    if (userAddress.id == null) {
      throw ArgumentError.notNull('userAddress.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $userAddress = userAddress.copyWith(addressId: address.id);
    await session.db.updateRow<UserAddress>(
      $userAddress,
      columns: [UserAddress.t.addressId],
    );
  }
}
