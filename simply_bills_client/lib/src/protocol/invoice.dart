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

abstract class Invoice implements _i1.SerializableModel {
  Invoice._({
    this.id,
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
  });

  factory Invoice({
    int? id,
    required String referenceNo,
    required int billToId,
    _i2.User? billTo,
    required int billAddressId,
    _i2.Address? billAddress,
    List<_i2.Invoice>? items,
    required double total,
    required DateTime createdAt,
    required int billCreatedById,
    _i2.User? billCreatedBy,
    required _i2.InvoiceStatus status,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] as int?,
      referenceNo: jsonSerialization['referenceNo'] as String,
      billToId: jsonSerialization['billToId'] as int,
      billTo: jsonSerialization['billTo'] == null
          ? null
          : _i2.User.fromJson(
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
          : _i2.User.fromJson(
              (jsonSerialization['billCreatedBy'] as Map<String, dynamic>)),
      status:
          _i2.InvoiceStatus.fromJson((jsonSerialization['status'] as String)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String referenceNo;

  int billToId;

  _i2.User? billTo;

  int billAddressId;

  _i2.Address? billAddress;

  List<_i2.Invoice>? items;

  double total;

  DateTime createdAt;

  int billCreatedById;

  _i2.User? billCreatedBy;

  _i2.InvoiceStatus status;

  Invoice copyWith({
    int? id,
    String? referenceNo,
    int? billToId,
    _i2.User? billTo,
    int? billAddressId,
    _i2.Address? billAddress,
    List<_i2.Invoice>? items,
    double? total,
    DateTime? createdAt,
    int? billCreatedById,
    _i2.User? billCreatedBy,
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
    _i2.User? billTo,
    required int billAddressId,
    _i2.Address? billAddress,
    List<_i2.Invoice>? items,
    required double total,
    required DateTime createdAt,
    required int billCreatedById,
    _i2.User? billCreatedBy,
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
      billTo: billTo is _i2.User? ? billTo : this.billTo?.copyWith(),
      billAddressId: billAddressId ?? this.billAddressId,
      billAddress: billAddress is _i2.Address?
          ? billAddress
          : this.billAddress?.copyWith(),
      items: items is List<_i2.Invoice>? ? items : this.items?.clone(),
      total: total ?? this.total,
      createdAt: createdAt ?? this.createdAt,
      billCreatedById: billCreatedById ?? this.billCreatedById,
      billCreatedBy: billCreatedBy is _i2.User?
          ? billCreatedBy
          : this.billCreatedBy?.copyWith(),
      status: status ?? this.status,
    );
  }
}
