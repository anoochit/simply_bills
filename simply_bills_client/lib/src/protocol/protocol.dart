/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'address.dart' as _i2;
import 'bill.dart' as _i3;
import 'bill_item.dart' as _i4;
import 'bill_status.dart' as _i5;
import 'event.dart' as _i6;
import 'example.dart' as _i7;
import 'faq.dart' as _i8;
import 'faq_type.dart' as _i9;
import 'post.dart' as _i10;
import 'product.dart' as _i11;
import 'user.dart' as _i12;
import 'user_scope.dart' as _i13;
import 'protocol.dart' as _i14;
import 'package:simply_bills_client/src/protocol/faq.dart' as _i15;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i16;
export 'address.dart';
export 'bill.dart';
export 'bill_item.dart';
export 'bill_status.dart';
export 'event.dart';
export 'example.dart';
export 'faq.dart';
export 'faq_type.dart';
export 'post.dart';
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
    if (t == _i2.Address) {
      return _i2.Address.fromJson(data) as T;
    }
    if (t == _i3.Bill) {
      return _i3.Bill.fromJson(data) as T;
    }
    if (t == _i4.BillItem) {
      return _i4.BillItem.fromJson(data) as T;
    }
    if (t == _i5.BillStatus) {
      return _i5.BillStatus.fromJson(data) as T;
    }
    if (t == _i6.Event) {
      return _i6.Event.fromJson(data) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data) as T;
    }
    if (t == _i8.Faq) {
      return _i8.Faq.fromJson(data) as T;
    }
    if (t == _i9.FaqType) {
      return _i9.FaqType.fromJson(data) as T;
    }
    if (t == _i10.Post) {
      return _i10.Post.fromJson(data) as T;
    }
    if (t == _i11.Product) {
      return _i11.Product.fromJson(data) as T;
    }
    if (t == _i12.User) {
      return _i12.User.fromJson(data) as T;
    }
    if (t == _i13.UserScope) {
      return _i13.UserScope.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Address?>()) {
      return (data != null ? _i2.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Bill?>()) {
      return (data != null ? _i3.Bill.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.BillItem?>()) {
      return (data != null ? _i4.BillItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.BillStatus?>()) {
      return (data != null ? _i5.BillStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Event?>()) {
      return (data != null ? _i6.Event.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Faq?>()) {
      return (data != null ? _i8.Faq.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.FaqType?>()) {
      return (data != null ? _i9.FaqType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Post?>()) {
      return (data != null ? _i10.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Product?>()) {
      return (data != null ? _i11.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.User?>()) {
      return (data != null ? _i12.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.UserScope?>()) {
      return (data != null ? _i13.UserScope.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i14.BillItem>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.BillItem>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i14.Address>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Address>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i15.Faq>) {
      return (data as List).map((e) => deserialize<_i15.Faq>(e)).toList()
          as dynamic;
    }
    try {
      return _i16.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i16.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Address) {
      return 'Address';
    }
    if (data is _i3.Bill) {
      return 'Bill';
    }
    if (data is _i4.BillItem) {
      return 'BillItem';
    }
    if (data is _i5.BillStatus) {
      return 'BillStatus';
    }
    if (data is _i6.Event) {
      return 'Event';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.Faq) {
      return 'Faq';
    }
    if (data is _i9.FaqType) {
      return 'FaqType';
    }
    if (data is _i10.Post) {
      return 'Post';
    }
    if (data is _i11.Product) {
      return 'Product';
    }
    if (data is _i12.User) {
      return 'User';
    }
    if (data is _i13.UserScope) {
      return 'UserScope';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i16.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i2.Address>(data['data']);
    }
    if (data['className'] == 'Bill') {
      return deserialize<_i3.Bill>(data['data']);
    }
    if (data['className'] == 'BillItem') {
      return deserialize<_i4.BillItem>(data['data']);
    }
    if (data['className'] == 'BillStatus') {
      return deserialize<_i5.BillStatus>(data['data']);
    }
    if (data['className'] == 'Event') {
      return deserialize<_i6.Event>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (data['className'] == 'Faq') {
      return deserialize<_i8.Faq>(data['data']);
    }
    if (data['className'] == 'FaqType') {
      return deserialize<_i9.FaqType>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i10.Post>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i11.Product>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i12.User>(data['data']);
    }
    if (data['className'] == 'UserScope') {
      return deserialize<_i13.UserScope>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
