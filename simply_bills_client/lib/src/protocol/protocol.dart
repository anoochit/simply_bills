/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'bill.dart' as _i2;
import 'bill_status.dart' as _i3;
import 'billitem.dart' as _i4;
import 'example.dart' as _i5;
import 'product.dart' as _i6;
import 'user.dart' as _i7;
import 'user_scope.dart' as _i8;
import 'protocol.dart' as _i9;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i10;
export 'bill.dart';
export 'bill_status.dart';
export 'billitem.dart';
export 'example.dart';
export 'product.dart';
export 'user.dart';
export 'user_scope.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Bill) {
      return _i2.Bill.fromJson(data) as T;
    }
    if (t == _i3.BillStatus) {
      return _i3.BillStatus.fromJson(data) as T;
    }
    if (t == _i4.BillItem) {
      return _i4.BillItem.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.Product) {
      return _i6.Product.fromJson(data) as T;
    }
    if (t == _i7.User) {
      return _i7.User.fromJson(data) as T;
    }
    if (t == _i8.UserScope) {
      return _i8.UserScope.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Bill?>()) {
      return (data != null ? _i2.Bill.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.BillStatus?>()) {
      return (data != null ? _i3.BillStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.BillItem?>()) {
      return (data != null ? _i4.BillItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Product?>()) {
      return (data != null ? _i6.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.User?>()) {
      return (data != null ? _i7.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.UserScope?>()) {
      return (data != null ? _i8.UserScope.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i9.BillItem>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i9.BillItem>(e)).toList()
          : null) as dynamic;
    }
    try {
      return _i10.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i10.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Bill) {
      return 'Bill';
    }
    if (data is _i3.BillStatus) {
      return 'BillStatus';
    }
    if (data is _i4.BillItem) {
      return 'BillItem';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Product) {
      return 'Product';
    }
    if (data is _i7.User) {
      return 'User';
    }
    if (data is _i8.UserScope) {
      return 'UserScope';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i10.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Bill') {
      return deserialize<_i2.Bill>(data['data']);
    }
    if (data['className'] == 'BillStatus') {
      return deserialize<_i3.BillStatus>(data['data']);
    }
    if (data['className'] == 'BillItem') {
      return deserialize<_i4.BillItem>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i6.Product>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i7.User>(data['data']);
    }
    if (data['className'] == 'UserScope') {
      return deserialize<_i8.UserScope>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
