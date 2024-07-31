/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Product implements _i1.SerializableModel {
  Product._({
    this.id,
    required this.title,
    required this.description,
    required this.unitPrice,
  });

  factory Product({
    int? id,
    required String title,
    required String description,
    required double unitPrice,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  double unitPrice;

  Product copyWith({
    int? id,
    String? title,
    String? description,
    double? unitPrice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'unitPrice': unitPrice,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String title,
    required String description,
    required double unitPrice,
  }) : super._(
          id: id,
          title: title,
          description: description,
          unitPrice: unitPrice,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    double? unitPrice,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}
