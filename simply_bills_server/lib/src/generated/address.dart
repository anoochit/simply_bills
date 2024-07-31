/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Address extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Address._({
    int? id,
    required this.address,
    required this.address2,
  }) : super(id);

  factory Address({
    int? id,
    required String address,
    required String address2,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] as int?,
      address: jsonSerialization['address'] as String,
      address2: jsonSerialization['address2'] as String,
    );
  }

  static final t = AddressTable();

  static const db = AddressRepository._();

  String address;

  String address2;

  int? _userAddressUserId;

  @override
  _i1.Table get table => t;

  Address copyWith({
    int? id,
    String? address,
    String? address2,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'address': address,
      'address2': address2,
      if (_userAddressUserId != null) '_userAddressUserId': _userAddressUserId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'address': address,
      'address2': address2,
    };
  }

  static AddressInclude include() {
    return AddressInclude._();
  }

  static AddressIncludeList includeList({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    AddressInclude? include,
  }) {
    return AddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Address.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    int? id,
    required String address,
    required String address2,
  }) : super._(
          id: id,
          address: address,
          address2: address2,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    String? address,
    String? address2,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      address: address ?? this.address,
      address2: address2 ?? this.address2,
    );
  }
}

class AddressImplicit extends _AddressImpl {
  AddressImplicit._({
    int? id,
    required String address,
    required String address2,
    this.$_userAddressUserId,
  }) : super(
          id: id,
          address: address,
          address2: address2,
        );

  factory AddressImplicit(
    Address address, {
    int? $_userAddressUserId,
  }) {
    return AddressImplicit._(
      id: address.id,
      address: address.address,
      address2: address.address2,
      $_userAddressUserId: $_userAddressUserId,
    );
  }

  int? $_userAddressUserId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({'_userAddressUserId': $_userAddressUserId});
    return jsonMap;
  }
}

class AddressTable extends _i1.Table {
  AddressTable({super.tableRelation}) : super(tableName: 'address') {
    address = _i1.ColumnString(
      'address',
      this,
    );
    address2 = _i1.ColumnString(
      'address2',
      this,
    );
    $_userAddressUserId = _i1.ColumnInt(
      '_userAddressUserId',
      this,
    );
  }

  late final _i1.ColumnString address;

  late final _i1.ColumnString address2;

  late final _i1.ColumnInt $_userAddressUserId;

  @override
  List<_i1.Column> get columns => [
        id,
        address,
        address2,
        $_userAddressUserId,
      ];
}

class AddressInclude extends _i1.IncludeObject {
  AddressInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Address.t;
}

class AddressIncludeList extends _i1.IncludeList {
  AddressIncludeList._({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Address.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Address.t;
}

class AddressRepository {
  const AddressRepository._();

  Future<List<Address>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Address?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Address?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Address>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Address>> insert(
    _i1.Session session,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Address>(
      rows,
      transaction: transaction,
    );
  }

  Future<Address> insertRow(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Address>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Address>> update(
    _i1.Session session,
    List<Address> rows, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Address>(
      rows,
      columns: columns?.call(Address.t),
      transaction: transaction,
    );
  }

  Future<Address> updateRow(
    _i1.Session session,
    Address row, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Address>(
      row,
      columns: columns?.call(Address.t),
      transaction: transaction,
    );
  }

  Future<List<Address>> delete(
    _i1.Session session,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Address>(
      rows,
      transaction: transaction,
    );
  }

  Future<Address> deleteRow(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Address>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Address>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where?.call(Address.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
