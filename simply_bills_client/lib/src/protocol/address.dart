/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Address implements _i1.SerializableModel {
  Address._({
    this.id,
    required this.address,
    required this.address2,
  });

  factory Address({
    int? id,
    required String address,
    required String address2,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] as int?,
      address: jsonSerialization['address'] as String,
      address2: jsonSerialization['address2'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String address;

  String address2;

  Address copyWith({
    int? id,
    String? address,
    String? address2,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'address': address,
      'address2': address2,
    };
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
    required String address,
    required String address2,
  }) : super._(
          id: id,
          address: address,
          address2: address2,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    String? address,
    String? address2,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      address: address ?? this.address,
      address2: address2 ?? this.address2,
    );
  }
}
