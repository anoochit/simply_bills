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

abstract class UserAddress implements _i1.SerializableModel {
  UserAddress._({
    this.id,
    required this.userId,
    this.user,
    required this.addressId,
    this.address,
  });

  factory UserAddress({
    int? id,
    required int userId,
    _i2.UserData? user,
    required int addressId,
    _i2.Address? address,
  }) = _UserAddressImpl;

  factory UserAddress.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserAddress(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.UserData.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      addressId: jsonSerialization['addressId'] as int,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.UserData? user;

  int addressId;

  _i2.Address? address;

  UserAddress copyWith({
    int? id,
    int? userId,
    _i2.UserData? user,
    int? addressId,
    _i2.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserAddressImpl extends UserAddress {
  _UserAddressImpl({
    int? id,
    required int userId,
    _i2.UserData? user,
    required int addressId,
    _i2.Address? address,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          addressId: addressId,
          address: address,
        );

  @override
  UserAddress copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? addressId,
    Object? address = _Undefined,
  }) {
    return UserAddress(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserData? ? user : this.user?.copyWith(),
      addressId: addressId ?? this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
    );
  }
}
