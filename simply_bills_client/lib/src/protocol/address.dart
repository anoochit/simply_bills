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

abstract class Address implements _i1.SerializableModel {
  Address._({
    this.id,
    required this.uid,
    required this.address,
    required this.address2,
    this.owners,
  });

  factory Address({
    int? id,
    required String uid,
    required String address,
    required String address2,
    List<_i2.UserAddress>? owners,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] as int?,
      uid: jsonSerialization['uid'] as String,
      address: jsonSerialization['address'] as String,
      address2: jsonSerialization['address2'] as String,
      owners: (jsonSerialization['owners'] as List?)
          ?.map((e) => _i2.UserAddress.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String uid;

  String address;

  String address2;

  List<_i2.UserAddress>? owners;

  Address copyWith({
    int? id,
    String? uid,
    String? address,
    String? address2,
    List<_i2.UserAddress>? owners,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'uid': uid,
      'address': address,
      'address2': address2,
      if (owners != null)
        'owners': owners?.toJson(valueToJson: (v) => v.toJson()),
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
    required String uid,
    required String address,
    required String address2,
    List<_i2.UserAddress>? owners,
  }) : super._(
          id: id,
          uid: uid,
          address: address,
          address2: address2,
          owners: owners,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    String? uid,
    String? address,
    String? address2,
    Object? owners = _Undefined,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      uid: uid ?? this.uid,
      address: address ?? this.address,
      address2: address2 ?? this.address2,
      owners: owners is List<_i2.UserAddress>? ? owners : this.owners?.clone(),
    );
  }
}
