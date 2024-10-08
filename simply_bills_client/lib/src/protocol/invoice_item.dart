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
    required this.quantity,
    required this.unitPrice,
    required this.total,
    required this.invoiceId,
    this.invoice,
  });

  factory InvoiceItem({
    int? id,
    required int productId,
    _i2.Product? product,
    required double quantity,
    required double unitPrice,
    required double total,
    required int invoiceId,
    _i2.Invoice? invoice,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      product: jsonSerialization['product'] == null
          ? null
          : _i2.Product.fromJson(
              (jsonSerialization['product'] as Map<String, dynamic>)),
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      total: (jsonSerialization['total'] as num).toDouble(),
      invoiceId: jsonSerialization['invoiceId'] as int,
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i2.Invoice.fromJson(
              (jsonSerialization['invoice'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  _i2.Product? product;

  double quantity;

  double unitPrice;

  double total;

  int invoiceId;

  _i2.Invoice? invoice;

  InvoiceItem copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    double? quantity,
    double? unitPrice,
    double? total,
    int? invoiceId,
    _i2.Invoice? invoice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'quantity': quantity,
      'unitPrice': unitPrice,
      'total': total,
      'invoiceId': invoiceId,
      if (invoice != null) 'invoice': invoice?.toJson(),
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
    required double quantity,
    required double unitPrice,
    required double total,
    required int invoiceId,
    _i2.Invoice? invoice,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          quantity: quantity,
          unitPrice: unitPrice,
          total: total,
          invoiceId: invoiceId,
          invoice: invoice,
        );

  @override
  InvoiceItem copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    double? quantity,
    double? unitPrice,
    double? total,
    int? invoiceId,
    Object? invoice = _Undefined,
  }) {
    return InvoiceItem(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      total: total ?? this.total,
      invoiceId: invoiceId ?? this.invoiceId,
      invoice: invoice is _i2.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}
