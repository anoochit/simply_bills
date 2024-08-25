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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Address extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Address._({
    int? id,
    required this.uid,
    required this.address,
    required this.address2,
    this.owners,
    this.invoices,
  }) : super(id);

  factory Address({
    int? id,
    required String uid,
    required String address,
    required String address2,
    List<_i2.UserAddress>? owners,
    List<_i2.Invoice>? invoices,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] as int?,
      uid: jsonSerialization['uid'] as String,
      address: jsonSerialization['address'] as String,
      address2: jsonSerialization['address2'] as String,
      owners: (jsonSerialization['owners'] as List?)
          ?.map((e) => _i2.UserAddress.fromJson((e as Map<String, dynamic>)))
          .toList(),
      invoices: (jsonSerialization['invoices'] as List?)
          ?.map((e) => _i2.Invoice.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = AddressTable();

  static const db = AddressRepository._();

  String uid;

  String address;

  String address2;

  List<_i2.UserAddress>? owners;

  List<_i2.Invoice>? invoices;

  @override
  _i1.Table get table => t;

  Address copyWith({
    int? id,
    String? uid,
    String? address,
    String? address2,
    List<_i2.UserAddress>? owners,
    List<_i2.Invoice>? invoices,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'uid': uid,
      'address': address,
      'address2': address2,
      if (owners != null)
        'owners': owners?.toJson(valueToJson: (v) => v.toJson()),
      if (invoices != null)
        'invoices': invoices?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'uid': uid,
      'address': address,
      'address2': address2,
      if (owners != null)
        'owners': owners?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (invoices != null)
        'invoices': invoices?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static AddressInclude include({
    _i2.UserAddressIncludeList? owners,
    _i2.InvoiceIncludeList? invoices,
  }) {
    return AddressInclude._(
      owners: owners,
      invoices: invoices,
    );
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
    required String uid,
    required String address,
    required String address2,
    List<_i2.UserAddress>? owners,
    List<_i2.Invoice>? invoices,
  }) : super._(
          id: id,
          uid: uid,
          address: address,
          address2: address2,
          owners: owners,
          invoices: invoices,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    String? uid,
    String? address,
    String? address2,
    Object? owners = _Undefined,
    Object? invoices = _Undefined,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      uid: uid ?? this.uid,
      address: address ?? this.address,
      address2: address2 ?? this.address2,
      owners: owners is List<_i2.UserAddress>? ? owners : this.owners?.clone(),
      invoices:
          invoices is List<_i2.Invoice>? ? invoices : this.invoices?.clone(),
    );
  }
}

class AddressTable extends _i1.Table {
  AddressTable({super.tableRelation}) : super(tableName: 'address') {
    uid = _i1.ColumnString(
      'uid',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
    address2 = _i1.ColumnString(
      'address2',
      this,
    );
  }

  late final _i1.ColumnString uid;

  late final _i1.ColumnString address;

  late final _i1.ColumnString address2;

  _i2.UserAddressTable? ___owners;

  _i1.ManyRelation<_i2.UserAddressTable>? _owners;

  _i2.InvoiceTable? ___invoices;

  _i1.ManyRelation<_i2.InvoiceTable>? _invoices;

  _i2.UserAddressTable get __owners {
    if (___owners != null) return ___owners!;
    ___owners = _i1.createRelationTable(
      relationFieldName: '__owners',
      field: Address.t.id,
      foreignField: _i2.UserAddress.t.addressId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserAddressTable(tableRelation: foreignTableRelation),
    );
    return ___owners!;
  }

  _i2.InvoiceTable get __invoices {
    if (___invoices != null) return ___invoices!;
    ___invoices = _i1.createRelationTable(
      relationFieldName: '__invoices',
      field: Address.t.id,
      foreignField: _i2.Invoice.t.addressId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return ___invoices!;
  }

  _i1.ManyRelation<_i2.UserAddressTable> get owners {
    if (_owners != null) return _owners!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'owners',
      field: Address.t.id,
      foreignField: _i2.UserAddress.t.addressId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserAddressTable(tableRelation: foreignTableRelation),
    );
    _owners = _i1.ManyRelation<_i2.UserAddressTable>(
      tableWithRelations: relationTable,
      table: _i2.UserAddressTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _owners!;
  }

  _i1.ManyRelation<_i2.InvoiceTable> get invoices {
    if (_invoices != null) return _invoices!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'invoices',
      field: Address.t.id,
      foreignField: _i2.Invoice.t.addressId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.InvoiceTable(tableRelation: foreignTableRelation),
    );
    _invoices = _i1.ManyRelation<_i2.InvoiceTable>(
      tableWithRelations: relationTable,
      table: _i2.InvoiceTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _invoices!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        uid,
        address,
        address2,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owners') {
      return __owners;
    }
    if (relationField == 'invoices') {
      return __invoices;
    }
    return null;
  }
}

class AddressInclude extends _i1.IncludeObject {
  AddressInclude._({
    _i2.UserAddressIncludeList? owners,
    _i2.InvoiceIncludeList? invoices,
  }) {
    _owners = owners;
    _invoices = invoices;
  }

  _i2.UserAddressIncludeList? _owners;

  _i2.InvoiceIncludeList? _invoices;

  @override
  Map<String, _i1.Include?> get includes => {
        'owners': _owners,
        'invoices': _invoices,
      };

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

  final attach = const AddressAttachRepository._();

  final attachRow = const AddressAttachRowRepository._();

  final detach = const AddressDetachRepository._();

  final detachRow = const AddressDetachRowRepository._();

  Future<List<Address>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
    AddressInclude? include,
  }) async {
    return session.db.find<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    AddressInclude? include,
  }) async {
    return session.db.findFirstRow<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Address?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    AddressInclude? include,
  }) async {
    return session.db.findById<Address>(
      id,
      transaction: transaction,
      include: include,
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

class AddressAttachRepository {
  const AddressAttachRepository._();

  Future<void> owners(
    _i1.Session session,
    Address address,
    List<_i2.UserAddress> userAddress,
  ) async {
    if (userAddress.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userAddress.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $userAddress =
        userAddress.map((e) => e.copyWith(addressId: address.id)).toList();
    await session.db.update<_i2.UserAddress>(
      $userAddress,
      columns: [_i2.UserAddress.t.addressId],
    );
  }

  Future<void> invoices(
    _i1.Session session,
    Address address,
    List<_i2.Invoice> invoice,
  ) async {
    if (invoice.any((e) => e.id == null)) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $invoice =
        invoice.map((e) => e.copyWith(addressId: address.id)).toList();
    await session.db.update<_i2.Invoice>(
      $invoice,
      columns: [_i2.Invoice.t.addressId],
    );
  }
}

class AddressAttachRowRepository {
  const AddressAttachRowRepository._();

  Future<void> owners(
    _i1.Session session,
    Address address,
    _i2.UserAddress userAddress,
  ) async {
    if (userAddress.id == null) {
      throw ArgumentError.notNull('userAddress.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $userAddress = userAddress.copyWith(addressId: address.id);
    await session.db.updateRow<_i2.UserAddress>(
      $userAddress,
      columns: [_i2.UserAddress.t.addressId],
    );
  }

  Future<void> invoices(
    _i1.Session session,
    Address address,
    _i2.Invoice invoice,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $invoice = invoice.copyWith(addressId: address.id);
    await session.db.updateRow<_i2.Invoice>(
      $invoice,
      columns: [_i2.Invoice.t.addressId],
    );
  }
}

class AddressDetachRepository {
  const AddressDetachRepository._();

  Future<void> owners(
    _i1.Session session,
    List<_i2.UserAddress> userAddress,
  ) async {
    if (userAddress.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userAddress.id');
    }

    var $userAddress =
        userAddress.map((e) => e.copyWith(addressId: null)).toList();
    await session.db.update<_i2.UserAddress>(
      $userAddress,
      columns: [_i2.UserAddress.t.addressId],
    );
  }

  Future<void> invoices(
    _i1.Session session,
    List<_i2.Invoice> invoice,
  ) async {
    if (invoice.any((e) => e.id == null)) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.map((e) => e.copyWith(addressId: null)).toList();
    await session.db.update<_i2.Invoice>(
      $invoice,
      columns: [_i2.Invoice.t.addressId],
    );
  }
}

class AddressDetachRowRepository {
  const AddressDetachRowRepository._();

  Future<void> owners(
    _i1.Session session,
    _i2.UserAddress userAddress,
  ) async {
    if (userAddress.id == null) {
      throw ArgumentError.notNull('userAddress.id');
    }

    var $userAddress = userAddress.copyWith(addressId: null);
    await session.db.updateRow<_i2.UserAddress>(
      $userAddress,
      columns: [_i2.UserAddress.t.addressId],
    );
  }

  Future<void> invoices(
    _i1.Session session,
    _i2.Invoice invoice,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.copyWith(addressId: null);
    await session.db.updateRow<_i2.Invoice>(
      $invoice,
      columns: [_i2.Invoice.t.addressId],
    );
  }
}
