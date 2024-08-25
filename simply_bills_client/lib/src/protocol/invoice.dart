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
    required this.addressId,
    this.address,
    this.items,
    required this.total,
    required this.createdAt,
    required this.createdById,
    this.createdBy,
    required this.status,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String referenceNo;

  int addressId;

  _i2.Address? address;

  List<_i2.InvoiceItem>? items;

  double total;

  DateTime createdAt;

  int createdById;

  _i2.UserData? createdBy;

  _i2.InvoiceStatus status;

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
