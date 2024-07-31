/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Bill implements _i1.SerializableModel {
  Bill._({
    this.id,
    required this.referenceNo,
    required this.billToId,
    this.billTo,
    this.items,
    required this.total,
    required this.createdAt,
    required this.billById,
    this.billBy,
    required this.status,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String referenceNo;

  int billToId;

  _i2.User? billTo;

  List<_i2.BillItem>? items;

  double total;

  DateTime createdAt;

  int billById;

  _i2.User? billBy;

  _i2.BillStatus status;

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
