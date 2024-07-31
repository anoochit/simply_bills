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

abstract class Bill extends _i1.TableRow implements _i1.ProtocolSerialization {
  Bill._({
    int? id,
    required this.referenceNo,
    required this.billToId,
    this.billTo,
    this.items,
    required this.total,
    required this.createdAt,
    required this.billById,
    this.billBy,
    required this.status,
  }) : super(id);

  factory Bill({
    int? id,
    required String referenceNo,
    required int billToId,
    _i2.User? billTo,
    List<_i2.BillItem>? items,
    required double total,
    required DateTime createdAt,
    required int billById,
    _i2.User? billBy,
    required _i2.BillStatus status,
  }) = _BillImpl;

  factory Bill.fromJson(Map<String, dynamic> jsonSerialization) {
    return Bill(
      id: jsonSerialization['id'] as int?,
      referenceNo: jsonSerialization['referenceNo'] as String,
      billToId: jsonSerialization['billToId'] as int,
      billTo: jsonSerialization['billTo'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['billTo'] as Map<String, dynamic>)),
      items: (jsonSerialization['items'] as List?)
          ?.map((e) => _i2.BillItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      total: (jsonSerialization['total'] as num).toDouble(),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      billById: jsonSerialization['billById'] as int,
      billBy: jsonSerialization['billBy'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['billBy'] as Map<String, dynamic>)),
      status: _i2.BillStatus.fromJson((jsonSerialization['status'] as String)),
    );
  }

  static final t = BillTable();

  static const db = BillRepository._();

  String referenceNo;

  int billToId;

  _i2.User? billTo;

  List<_i2.BillItem>? items;

  double total;

  DateTime createdAt;

  int billById;

  _i2.User? billBy;

  _i2.BillStatus status;

  @override
  _i1.Table get table => t;

  Bill copyWith({
    int? id,
    String? referenceNo,
    int? billToId,
    _i2.User? billTo,
    List<_i2.BillItem>? items,
    double? total,
    DateTime? createdAt,
    int? billById,
    _i2.User? billBy,
    _i2.BillStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'referenceNo': referenceNo,
      'billToId': billToId,
      if (billTo != null) 'billTo': billTo?.toJson(),
      if (items != null) 'items': items?.toJson(valueToJson: (v) => v.toJson()),
      'total': total,
      'createdAt': createdAt.toJson(),
      'billById': billById,
      if (billBy != null) 'billBy': billBy?.toJson(),
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
      if (items != null)
        'items': items?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'total': total,
      'createdAt': createdAt.toJson(),
      'billById': billById,
      if (billBy != null) 'billBy': billBy?.toJsonForProtocol(),
      'status': status.toJson(),
    };
  }

  static BillInclude include({
    _i2.UserInclude? billTo,
    _i2.UserInclude? billBy,
  }) {
    return BillInclude._(
      billTo: billTo,
      billBy: billBy,
    );
  }

  static BillIncludeList includeList({
    _i1.WhereExpressionBuilder<BillTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BillTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BillTable>? orderByList,
    BillInclude? include,
  }) {
    return BillIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Bill.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Bill.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BillImpl extends Bill {
  _BillImpl({
    int? id,
    required String referenceNo,
    required int billToId,
    _i2.User? billTo,
    List<_i2.BillItem>? items,
    required double total,
    required DateTime createdAt,
    required int billById,
    _i2.User? billBy,
    required _i2.BillStatus status,
  }) : super._(
          id: id,
          referenceNo: referenceNo,
          billToId: billToId,
          billTo: billTo,
          items: items,
          total: total,
          createdAt: createdAt,
          billById: billById,
          billBy: billBy,
          status: status,
        );

  @override
  Bill copyWith({
    Object? id = _Undefined,
    String? referenceNo,
    int? billToId,
    Object? billTo = _Undefined,
    Object? items = _Undefined,
    double? total,
    DateTime? createdAt,
    int? billById,
    Object? billBy = _Undefined,
    _i2.BillStatus? status,
  }) {
    return Bill(
      id: id is int? ? id : this.id,
      referenceNo: referenceNo ?? this.referenceNo,
      billToId: billToId ?? this.billToId,
      billTo: billTo is _i2.User? ? billTo : this.billTo?.copyWith(),
      items: items is List<_i2.BillItem>? ? items : this.items?.clone(),
      total: total ?? this.total,
      createdAt: createdAt ?? this.createdAt,
      billById: billById ?? this.billById,
      billBy: billBy is _i2.User? ? billBy : this.billBy?.copyWith(),
      status: status ?? this.status,
    );
  }
}

class BillTable extends _i1.Table {
  BillTable({super.tableRelation}) : super(tableName: 'bill') {
    referenceNo = _i1.ColumnString(
      'referenceNo',
      this,
    );
    billToId = _i1.ColumnInt(
      'billToId',
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
    billById = _i1.ColumnInt(
      'billById',
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

  _i2.UserTable? _billTo;

  late final _i1.ColumnSerializable items;

  late final _i1.ColumnDouble total;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt billById;

  _i2.UserTable? _billBy;

  late final _i1.ColumnEnum<_i2.BillStatus> status;

  _i2.UserTable get billTo {
    if (_billTo != null) return _billTo!;
    _billTo = _i1.createRelationTable(
      relationFieldName: 'billTo',
      field: Bill.t.billToId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _billTo!;
  }

  _i2.UserTable get billBy {
    if (_billBy != null) return _billBy!;
    _billBy = _i1.createRelationTable(
      relationFieldName: 'billBy',
      field: Bill.t.billById,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _billBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        referenceNo,
        billToId,
        items,
        total,
        createdAt,
        billById,
        status,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'billTo') {
      return billTo;
    }
    if (relationField == 'billBy') {
      return billBy;
    }
    return null;
  }
}

class BillInclude extends _i1.IncludeObject {
  BillInclude._({
    _i2.UserInclude? billTo,
    _i2.UserInclude? billBy,
  }) {
    _billTo = billTo;
    _billBy = billBy;
  }

  _i2.UserInclude? _billTo;

  _i2.UserInclude? _billBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'billTo': _billTo,
        'billBy': _billBy,
      };

  @override
  _i1.Table get table => Bill.t;
}

class BillIncludeList extends _i1.IncludeList {
  BillIncludeList._({
    _i1.WhereExpressionBuilder<BillTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Bill.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Bill.t;
}

class BillRepository {
  const BillRepository._();

  final attachRow = const BillAttachRowRepository._();

  Future<List<Bill>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BillTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BillTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BillTable>? orderByList,
    _i1.Transaction? transaction,
    BillInclude? include,
  }) async {
    return session.db.find<Bill>(
      where: where?.call(Bill.t),
      orderBy: orderBy?.call(Bill.t),
      orderByList: orderByList?.call(Bill.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Bill?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BillTable>? where,
    int? offset,
    _i1.OrderByBuilder<BillTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BillTable>? orderByList,
    _i1.Transaction? transaction,
    BillInclude? include,
  }) async {
    return session.db.findFirstRow<Bill>(
      where: where?.call(Bill.t),
      orderBy: orderBy?.call(Bill.t),
      orderByList: orderByList?.call(Bill.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Bill?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BillInclude? include,
  }) async {
    return session.db.findById<Bill>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Bill>> insert(
    _i1.Session session,
    List<Bill> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Bill>(
      rows,
      transaction: transaction,
    );
  }

  Future<Bill> insertRow(
    _i1.Session session,
    Bill row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Bill>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Bill>> update(
    _i1.Session session,
    List<Bill> rows, {
    _i1.ColumnSelections<BillTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Bill>(
      rows,
      columns: columns?.call(Bill.t),
      transaction: transaction,
    );
  }

  Future<Bill> updateRow(
    _i1.Session session,
    Bill row, {
    _i1.ColumnSelections<BillTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Bill>(
      row,
      columns: columns?.call(Bill.t),
      transaction: transaction,
    );
  }

  Future<List<Bill>> delete(
    _i1.Session session,
    List<Bill> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Bill>(
      rows,
      transaction: transaction,
    );
  }

  Future<Bill> deleteRow(
    _i1.Session session,
    Bill row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Bill>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Bill>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BillTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Bill>(
      where: where(Bill.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BillTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Bill>(
      where: where?.call(Bill.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BillAttachRowRepository {
  const BillAttachRowRepository._();

  Future<void> billTo(
    _i1.Session session,
    Bill bill,
    _i2.User billTo,
  ) async {
    if (bill.id == null) {
      throw ArgumentError.notNull('bill.id');
    }
    if (billTo.id == null) {
      throw ArgumentError.notNull('billTo.id');
    }

    var $bill = bill.copyWith(billToId: billTo.id);
    await session.db.updateRow<Bill>(
      $bill,
      columns: [Bill.t.billToId],
    );
  }

  Future<void> billBy(
    _i1.Session session,
    Bill bill,
    _i2.User billBy,
  ) async {
    if (bill.id == null) {
      throw ArgumentError.notNull('bill.id');
    }
    if (billBy.id == null) {
      throw ArgumentError.notNull('billBy.id');
    }

    var $bill = bill.copyWith(billById: billBy.id);
    await session.db.updateRow<Bill>(
      $bill,
      columns: [Bill.t.billById],
    );
  }
}
