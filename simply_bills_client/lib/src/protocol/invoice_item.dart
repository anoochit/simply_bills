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

abstract class InvoiceItem implements _i1.SerializableModel {
  InvoiceItem._({
    this.id,
    required this.productId,
    this.product,
    required this.qt,
    required this.unitPrice,
    required this.total,
  });

  factory InvoiceItem({
    int? id,
    required int productId,
    _i2.Product? product,
    required double qt,
    required double unitPrice,
    required double total,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      product: jsonSerialization['product'] == null
          ? null
          : _i2.Product.fromJson(
              (jsonSerialization['product'] as Map<String, dynamic>)),
      qt: (jsonSerialization['qt'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      total: (jsonSerialization['total'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  _i2.Product? product;

  double qt;

  double unitPrice;

  double total;

  InvoiceItem copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    double? qt,
    double? unitPrice,
    double? total,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'qt': qt,
      'unitPrice': unitPrice,
      'total': total,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceItemImpl extends InvoiceItem {
  _InvoiceItemImpl({
    int? id,
    required int productId,
    _i2.Product? product,
    required double qt,
    required double unitPrice,
    required double total,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          qt: qt,
          unitPrice: unitPrice,
          total: total,
        );

  @override
  InvoiceItem copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    double? qt,
    double? unitPrice,
    double? total,
  }) {
    return InvoiceItem(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      qt: qt ?? this.qt,
      unitPrice: unitPrice ?? this.unitPrice,
      total: total ?? this.total,
    );
  }
}
