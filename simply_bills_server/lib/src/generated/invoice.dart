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
    required this.billToId,
    this.billTo,
    required this.billAddressId,
    this.billAddress,
    this.items,
    required this.total,
    required this.createdAt,
    required this.billCreatedById,
    this.billCreatedBy,
    required this.status,
  }) : super(id);

  factory Invoice({
    int? id,
    required String referenceNo,
    required int billToId,
    _i2.UserData? billTo,
    required int billAddressId,
    _i2.Address? billAddress,
    List<_i2.Invoice>? items,
    required double total,
    required DateTime createdAt,
    required int billCreatedById,
    _i2.UserData? billCreatedBy,
    required _i2.InvoiceStatus status,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] as int?,
      referenceNo: jsonSerialization['referenceNo'] as String,
      billToId: jsonSerialization['billToId'] as int,
      billTo: jsonSerialization['billTo'] == null
          ? null
          : _i2.UserData.fromJson(
              (jsonSerialization['billTo'] as Map<String, dynamic>)),
      billAddressId: jsonSerialization['billAddressId'] as int,
      billAddress: jsonSerialization['billAddress'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['billAddress'] as Map<String, dynamic>)),
      items: (jsonSerialization['items'] as List?)
          ?.map((e) => _i2.Invoice.fromJson((e as Map<String, dynamic>)))
          .toList(),
      total: (jsonSerialization['total'] as num).toDouble(),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      billCreatedById: jsonSerialization['billCreatedById'] as int,
      billCreatedBy: jsonSerialization['billCreatedBy'] == null
          ? null
          : _i2.UserData.fromJson(
              (jsonSerialization['billCreatedBy'] as Map<String, dynamic>)),
      status:
          _i2.InvoiceStatus.fromJson((jsonSerialization['status'] as String)),
    );
  }

  static final t = InvoiceTable();

  static const db = InvoiceRepository._();

  String referenceNo;

  int billToId;

  _i2.UserData? billTo;

  int billAddressId;

  _i2.Address? billAddress;

  List<_i2.Invoice>? items;

  double total;

  DateTime createdAt;

  int billCreatedById;

  _i2.UserData? billCreatedBy;

  _i2.InvoiceStatus status;

  @override
  _i1.Table get table => t;

  Invoice copyWith({
    int? id,
    String? referenceNo,
    int? billToId,
    _i2.UserData? billTo,
    int? billAddressId,
    _i2.Address? billAddress,
    List<_i2.Invoice>? items,
    double? total,
    DateTime? createdAt,
    int? billCreatedById,
    _i2.UserData? billCreatedBy,
    _i2.InvoiceStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'referenceNo': referenceNo,
      'billToId': billToId,
      if (billTo != null) 'billTo': billTo?.toJson(),
      'billAddressId': billAddressId,
      if (billAddress != null) 'billAddress': billAddress?.toJson(),
      if (items != null) 'items': items?.toJson(valueToJson: (v) => v.toJson()),
      'total': total,
      'createdAt': createdAt.toJson(),
      'billCreatedById': billCreatedById,
      if (billCreatedBy != null) 'billCreatedBy': billCreatedBy?.toJson(),
      'status': status.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'referenceNo': referenceNo,
      'billToId': billToId,
      if (billTo != null) 'billTo': billTo?.toJsonForProtocol(),
      'billAddressId': billAddressId,
      if (billAddress != null) 'billAddress': billAddress?.toJsonForProtocol(),
      if (items != null)
        'items': items?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'total': total,
      'createdAt': createdAt.toJson(),
      'billCreatedById': billCreatedById,
      if (billCreatedBy != null)
        'billCreatedBy': billCreatedBy?.toJsonForProtocol(),
      'status': status.toJson(),
    };
  }

  static InvoiceInclude include({
    _i2.UserDataInclude? billTo,
    _i2.AddressInclude? billAddress,
    _i2.UserDataInclude? billCreatedBy,
  }) {
    return InvoiceInclude._(
      billTo: billTo,
      billAddress: billAddress,
      billCreatedBy: billCreatedBy,
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
    required int billToId,
    _i2.UserData? billTo,
    required int billAddressId,
    _i2.Address? billAddress,
    List<_i2.Invoice>? items,
    required double total,
    required DateTime createdAt,
    required int billCreatedById,
    _i2.UserData? billCreatedBy,
    required _i2.InvoiceStatus status,
  }) : super._(
          id: id,
          referenceNo: referenceNo,
          billToId: billToId,
          billTo: billTo,
          billAddressId: billAddressId,
          billAddress: billAddress,
          items: items,
          total: total,
          createdAt: createdAt,
          billCreatedById: billCreatedById,
          billCreatedBy: billCreatedBy,
          status: status,
        );

  @override
  Invoice copyWith({
    Object? id = _Undefined,
    String? referenceNo,
    int? billToId,
    Object? billTo = _Undefined,
    int? billAddressId,
    Object? billAddress = _Undefined,
    Object? items = _Undefined,
    double? total,
    DateTime? createdAt,
    int? billCreatedById,
    Object? billCreatedBy = _Undefined,
    _i2.InvoiceStatus? status,
  }) {
    return Invoice(
      id: id is int? ? id : this.id,
      referenceNo: referenceNo ?? this.referenceNo,
      billToId: billToId ?? this.billToId,
      billTo: billTo is _i2.UserData? ? billTo : this.billTo?.copyWith(),
      billAddressId: billAddressId ?? this.billAddressId,
      billAddress: billAddress is _i2.Address?
          ? billAddress
          : this.billAddress?.copyWith(),
      items: items is List<_i2.Invoice>? ? items : this.items?.clone(),
      total: total ?? this.total,
      createdAt: createdAt ?? this.createdAt,
      billCreatedById: billCreatedById ?? this.billCreatedById,
      billCreatedBy: billCreatedBy is _i2.UserData?
          ? billCreatedBy
          : this.billCreatedBy?.copyWith(),
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
    billToId = _i1.ColumnInt(
      'billToId',
      this,
    );
    billAddressId = _i1.ColumnInt(
      'billAddressId',
      this,
    );
    items = _i1.ColumnSerializable(
      'items',
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
    billCreatedById = _i1.ColumnInt(
      'billCreatedById',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnString referenceNo;

  late final _i1.ColumnInt billToId;

  _i2.UserDataTable? _billTo;

  late final _i1.ColumnInt billAddressId;

  _i2.AddressTable? _billAddress;

  late final _i1.ColumnSerializable items;

  late final _i1.ColumnDouble total;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt billCreatedById;

  _i2.UserDataTable? _billCreatedBy;

  late final _i1.ColumnEnum<_i2.InvoiceStatus> status;

  _i2.UserDataTable get billTo {
    if (_billTo != null) return _billTo!;
    _billTo = _i1.createRelationTable(
      relationFieldName: 'billTo',
      field: Invoice.t.billToId,
      foreignField: _i2.UserData.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserDataTable(tableRelation: foreignTableRelation),
    );
    return _billTo!;
  }

  _i2.AddressTable get billAddress {
    if (_billAddress != null) return _billAddress!;
    _billAddress = _i1.createRelationTable(
      relationFieldName: 'billAddress',
      field: Invoice.t.billAddressId,
      foreignField: _i2.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    return _billAddress!;
  }

  _i2.UserDataTable get billCreatedBy {
    if (_billCreatedBy != null) return _billCreatedBy!;
    _billCreatedBy = _i1.createRelationTable(
      relationFieldName: 'billCreatedBy',
      field: Invoice.t.billCreatedById,
      foreignField: _i2.UserData.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserDataTable(tableRelation: foreignTableRelation),
    );
    return _billCreatedBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        referenceNo,
        billToId,
        billAddressId,
        items,
        total,
        createdAt,
        billCreatedById,
        status,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'billTo') {
      return billTo;
    }
    if (relationField == 'billAddress') {
      return billAddress;
    }
    if (relationField == 'billCreatedBy') {
      return billCreatedBy;
    }
    return null;
  }
}

class InvoiceInclude extends _i1.IncludeObject {
  InvoiceInclude._({
    _i2.UserDataInclude? billTo,
    _i2.AddressInclude? billAddress,
    _i2.UserDataInclude? billCreatedBy,
  }) {
    _billTo = billTo;
    _billAddress = billAddress;
    _billCreatedBy = billCreatedBy;
  }

  _i2.UserDataInclude? _billTo;

  _i2.AddressInclude? _billAddress;

  _i2.UserDataInclude? _billCreatedBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'billTo': _billTo,
        'billAddress': _billAddress,
        'billCreatedBy': _billCreatedBy,
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

  final attachRow = const InvoiceAttachRowRepository._();

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

class InvoiceAttachRowRepository {
  const InvoiceAttachRowRepository._();

  Future<void> billTo(
    _i1.Session session,
    Invoice invoice,
    _i2.UserData billTo,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (billTo.id == null) {
      throw ArgumentError.notNull('billTo.id');
    }

    var $invoice = invoice.copyWith(billToId: billTo.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.billToId],
    );
  }

  Future<void> billAddress(
    _i1.Session session,
    Invoice invoice,
    _i2.Address billAddress,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (billAddress.id == null) {
      throw ArgumentError.notNull('billAddress.id');
    }

    var $invoice = invoice.copyWith(billAddressId: billAddress.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.billAddressId],
    );
  }

  Future<void> billCreatedBy(
    _i1.Session session,
    Invoice invoice,
    _i2.UserData billCreatedBy,
  ) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (billCreatedBy.id == null) {
      throw ArgumentError.notNull('billCreatedBy.id');
    }

    var $invoice = invoice.copyWith(billCreatedById: billCreatedBy.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.billCreatedById],
    );
  }
}
