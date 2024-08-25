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

abstract class Invoice extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Invoice._({
    int? id,
    required this.referenceNo,
    required this.addressId,
    this.address,
    this.items,
    required this.total,
    required this.createdAt,
    required this.createdById,
    this.createdBy,
    required this.status,
  }) : super(id);

  factory Invoice({
    int? id,
    required String referenceNo,
    required int addressId,
    _i2.Address? address,
    List<_i2.InvoiceItem>? items,
    required double total,
    required DateTime createdAt,
    required int createdById,
    _i2.UserData? createdBy,
    required _i2.InvoiceStatus status,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] as int?,
      referenceNo: jsonSerialization['referenceNo'] as String,
      addressId: jsonSerialization['addressId'] as int,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
      items: (jsonSerialization['items'] as List?)
          ?.map((e) => _i2.InvoiceItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      total: (jsonSerialization['total'] as num).toDouble(),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      createdById: jsonSerialization['createdById'] as int,
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _i2.UserData.fromJson(
              (jsonSerialization['createdBy'] as Map<String, dynamic>)),
      status:
          _i2.InvoiceStatus.fromJson((jsonSerialization['status'] as String)),
    );
  }

  static final t = InvoiceTable();

  static const db = InvoiceRepository._();

  String referenceNo;

  int addressId;

  _i2.Address? address;

  List<_i2.InvoiceItem>? items;

  double total;

  DateTime createdAt;

  int createdById;

  _i2.UserData? createdBy;

  _i2.InvoiceStatus status;

  @override
  _i1.Table get table => t;

  Invoice copyWith({
    int? id,
    String? referenceNo,
    int? addressId,
    _i2.Address? address,
    List<_i2.InvoiceItem>? items,
    double? total,
    DateTime? createdAt,
    int? createdById,
    _i2.UserData? createdBy,
    _i2.InvoiceStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'referenceNo': referenceNo,
      'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
      if (items != null) 'items': items?.toJson(valueToJson: (v) => v.toJson()),
      'total': total,
      'createdAt': createdAt.toJson(),
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      'status': status.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'referenceNo': referenceNo,
      'addressId': addressId,
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (items != null)
        'items': items?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'total': total,
      'createdAt': createdAt.toJson(),
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJsonForProtocol(),
      'status': status.toJson(),
    };
  }

  static InvoiceInclude include({
    _i2.AddressInclude? address,
    _i2.InvoiceItemIncludeList? items,
    _i2.UserDataInclude? createdBy,
  }) {
    return InvoiceInclude._(
      address: address,
      items: items,
      createdBy: createdBy,
    );
  }

  static InvoiceIncludeList includeList({
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    InvoiceInclude? include,
  }) {
    return InvoiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Invoice.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Invoice.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceImpl extends Invoice {
  _InvoiceImpl({
    int? id,
    required String referenceNo,
    required int addressId,
    _i2.Address? address,
    List<_i2.InvoiceItem>? items,
    required double total,
    required DateTime createdAt,
    required int createdById,
    _i2.UserData? createdBy,
    required _i2.InvoiceStatus status,
  }) : super._(
          id: id,
          referenceNo: referenceNo,
          addressId: addressId,
          address: address,
          items: items,
          total: total,
          createdAt: createdAt,
          createdById: createdById,
          createdBy: createdBy,
          status: status,
        );

  @override
  Invoice copyWith({
    Object? id = _Undefined,
    String? referenceNo,
    int? addressId,
    Object? address = _Undefined,
    Object? items = _Undefined,
    double? total,
    DateTime? createdAt,
    int? createdById,
    Object? createdBy = _Undefined,
    _i2.InvoiceStatus? status,
  }) {
    return Invoice(
      id: id is int? ? id : this.id,
      referenceNo: referenceNo ?? this.referenceNo,
      addressId: addressId ?? this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      items: items is List<_i2.InvoiceItem>? ? items : this.items?.clone(),
      total: total ?? this.total,
      createdAt: createdAt ?? this.createdAt,
      createdById: createdById ?? this.createdById,
      createdBy:
          createdBy is _i2.UserData? ? createdBy : this.createdBy?.copyWith(),
      status: status ?? this.status,
    );
  }
}

class InvoiceTable extends _i1.Table {
  InvoiceTable({super.tableRelation}) : super(tableName: 'invoice') {
    referenceNo = _i1.ColumnString(
      'referenceNo',
      this,
    );
    addressId = _i1.ColumnInt(
      'addressId',
      this,
    );
    total = _i1.ColumnDouble(
      'total',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    createdById = _i1.ColumnInt(
      'createdById',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnString referenceNo;

  late final _i1.ColumnInt addressId;

  _i2.AddressTable? _address;

  _i2.InvoiceItemTable? ___items;

  _i1.ManyRelation<_i2.InvoiceItemTable>? _items;

  late final _i1.ColumnDouble total;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt createdById;

  _i2.UserDataTable? _createdBy;

  late final _i1.ColumnEnum<_i2.InvoiceStatus> status;

  _i2.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: Invoice.t.addressId,
      foreignField: _i2.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  _i2.InvoiceItemTable get __items {
    if (___items != null) return ___items!;
    ___items = _i1.createRelationTable(
      relationFieldName: '__items',
      field: Invoice.t.id,
      foreignField: _i2.InvoiceItem.t.invoiceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.InvoiceItemTable(tableRelation: foreignTableRelation),
    );
    return ___items!;
  }

  _i2.UserDataTable get createdBy {
    if (_createdBy != null) return _createdBy!;
    _createdBy = _i1.createRelationTable(
      relationFieldName: 'createdBy',
      field: Invoice.t.createdById,
      foreignField: _i2.UserData.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserDataTable(tableRelation: foreignTableRelation),
    );
    return _createdBy!;
  }

  _i1.ManyRelation<_i2.InvoiceItemTable> get items {
    if (_items != null) return _items!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'items',
      field: Invoice.t.id,
      foreignField: _i2.InvoiceItem.t.invoiceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.InvoiceItemTable(tableRelation: foreignTableRelation),
    );
    _items = _i1.ManyRelation<_i2.InvoiceItemTable>(
      tableWithRelations: relationTable,
      table: _i2.InvoiceItemTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _items!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        referenceNo,
        addressId,
        total,
        createdAt,
        createdById,
        status,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'address') {
      return address;
    }
    if (relationField == 'items') {
      return __items;
    }
    if (relationField == 'createdBy') {
      return createdBy;
    }
    return null;
  }
}

class InvoiceInclude extends _i1.IncludeObject {
  InvoiceInclude._({
    _i2.AddressInclude? address,
    _i2.InvoiceItemIncludeList? items,
    _i2.UserDataInclude? createdBy,
  }) {
    _address = address;
    _items = items;
    _createdBy = createdBy;
  }

  _i2.AddressInclude? _address;

  _i2.InvoiceItemIncludeList? _items;

  _i2.UserDataInclude? _createdBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'address': _address,
        'items': _items,
        'createdBy': _createdBy,
      };

  @override
  _i1.Table get table => Invoice.t;
}

class InvoiceIncludeList extends _i1.IncludeList {
  InvoiceIncludeList._({
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Invoice.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Invoice.t;
}

class InvoiceRepository {
  const InvoiceRepository._();

  final attach = const InvoiceAttachRepository._();

  final attachRow = const InvoiceAttachRowRepository._();

  final detach = const InvoiceDetachRepository._();

  final detachRow = const InvoiceDetachRowRepository._();

  Future<List<Invoice>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceInclude? include,
  }) async {
    return session.db.find<Invoice>(
      where: where?.call(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Invoice?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceInclude? include,
  }) async {
    return session.db.findFirstRow<Invoice>(
      where: where?.call(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Invoice?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    InvoiceInclude? include,
  }) async {
    return session.db.findById<Invoice>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Invoice>> insert(
    _i1.Session session,
    List<Invoice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Invoice>(
      rows,
      transaction: transaction,
    );
  }

  Future<Invoice> insertRow(
    _i1.Session session,
    Invoice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Invoice>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Invoice>> update(
    _i1.Session session,
    List<Invoice> rows, {
    _i1.ColumnSelections<InvoiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Invoice>(
      rows,
      columns: columns?.call(Invoice.t),
      transaction: transaction,
    );
  }

  Future<Invoice> updateRow(
    _i1.Session session,
    Invoice row, {
    _i1.ColumnSelections<InvoiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Invoice>(
      row,
      columns: columns?.call(Invoice.t),
      transaction: transaction,
    );
  }

  Future<List<Invoice>> delete(
    _i1.Session session,
    List<Invoice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Invoice>(
      rows,
      transaction: transaction,
    );
  }

  Future<Invoice> deleteRow(
    _i1.Session session,
    Invoice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Invoice>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Invoice>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InvoiceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Invoice>(
      where: where(Invoice.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Invoice>(
      where: where?.call(Invoice.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class InvoiceAttachRepository {
  const InvoiceAttachRepository._();

  Future<void> items(
    _i1.Session session,
    Invoice invoice,
    List<_i2.InvoiceItem> invoiceItem,
  ) async {
    if (invoiceItem.any((e) => e.id == null)) {
      throw ArgumentError.notNull('invoiceItem.id');
    }
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoiceItem =
        invoiceItem.map((e) => e.copyWith(invoiceId: invoice.id)).toList();
    await session.db.update<_i2.InvoiceItem>(
      $invoiceItem,
      columns: [_i2.InvoiceItem.t.invoiceId],
    );
  }
}

class InvoiceAttachRowRepository {
  const InvoiceAttachRowRepository._();

  Future<void> address(
    _i1.Session session,
    Invoice invoice,
    _i2.Address address,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $invoice = invoice.copyWith(addressId: address.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.addressId],
    );
  }

  Future<void> createdBy(
    _i1.Session session,
    Invoice invoice,
    _i2.UserData createdBy,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (createdBy.id == null) {
      throw ArgumentError.notNull('createdBy.id');
    }

    var $invoice = invoice.copyWith(createdById: createdBy.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.createdById],
    );
  }

  Future<void> items(
    _i1.Session session,
    Invoice invoice,
    _i2.InvoiceItem invoiceItem,
  ) async {
    if (invoiceItem.id == null) {
      throw ArgumentError.notNull('invoiceItem.id');
    }
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoiceItem = invoiceItem.copyWith(invoiceId: invoice.id);
    await session.db.updateRow<_i2.InvoiceItem>(
      $invoiceItem,
      columns: [_i2.InvoiceItem.t.invoiceId],
    );
  }
}

class InvoiceDetachRepository {
  const InvoiceDetachRepository._();

  Future<void> items(
    _i1.Session session,
    List<_i2.InvoiceItem> invoiceItem,
  ) async {
    if (invoiceItem.any((e) => e.id == null)) {
      throw ArgumentError.notNull('invoiceItem.id');
    }

    var $invoiceItem =
        invoiceItem.map((e) => e.copyWith(invoiceId: null)).toList();
    await session.db.update<_i2.InvoiceItem>(
      $invoiceItem,
      columns: [_i2.InvoiceItem.t.invoiceId],
    );
  }
}

class InvoiceDetachRowRepository {
  const InvoiceDetachRowRepository._();

  Future<void> items(
    _i1.Session session,
    _i2.InvoiceItem invoiceItem,
  ) async {
    if (invoiceItem.id == null) {
      throw ArgumentError.notNull('invoiceItem.id');
    }

    var $invoiceItem = invoiceItem.copyWith(invoiceId: null);
    await session.db.updateRow<_i2.InvoiceItem>(
      $invoiceItem,
      columns: [_i2.InvoiceItem.t.invoiceId],
    );
  }
}
