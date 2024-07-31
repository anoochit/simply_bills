/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.userInfoId,
    this.userInfo,
    required this.name,
    this.address,
    this.telephone,
    this.email,
    required this.scope,
  });

  factory User({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    List<_i3.Address>? address,
    String? telephone,
    String? email,
    required _i3.UserScope scope,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      address: (jsonSerialization['address'] as List?)
          ?.map((e) => _i3.Address.fromJson((e as Map<String, dynamic>)))
          .toList(),
      telephone: jsonSerialization['telephone'] as String?,
      email: jsonSerialization['email'] as String?,
      scope: _i3.UserScope.fromJson((jsonSerialization['scope'] as String)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userInfoId;

  _i2.UserInfo? userInfo;

  String name;

  List<_i3.Address>? address;

  String? telephone;

  String? email;

  _i3.UserScope scope;

  User copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? name,
    List<_i3.Address>? address,
    String? telephone,
    String? email,
    _i3.UserScope? scope,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'name': name,
      if (address != null)
        'address': address?.toJson(valueToJson: (v) => v.toJson()),
      if (telephone != null) 'telephone': telephone,
      if (email != null) 'email': email,
      'scope': scope.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    List<_i3.Address>? address,
    String? telephone,
    String? email,
    required _i3.UserScope scope,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          name: name,
          address: address,
          telephone: telephone,
          email: email,
          scope: scope,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    String? name,
    Object? address = _Undefined,
    Object? telephone = _Undefined,
    Object? email = _Undefined,
    _i3.UserScope? scope,
  }) {
    return User(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      name: name ?? this.name,
      address: address is List<_i3.Address>? ? address : this.address?.clone(),
      telephone: telephone is String? ? telephone : this.telephone,
      email: email is String? ? email : this.email,
      scope: scope ?? this.scope,
    );
  }
}
