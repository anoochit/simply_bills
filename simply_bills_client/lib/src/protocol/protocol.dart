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
import 'event.dart' as _i3;
import 'example.dart' as _i4;
import 'faq.dart' as _i5;
import 'faq_type.dart' as _i6;
import 'invoice.dart' as _i7;
import 'invoice_item.dart' as _i8;
import 'invoice_status.dart' as _i9;
import 'post.dart' as _i10;
import 'product.dart' as _i11;
import 'user.dart' as _i12;
import 'user_scope.dart' as _i13;
import 'protocol.dart' as _i14;
import 'package:simply_bills_client/src/protocol/faq.dart' as _i15;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i16;
import 'package:simply_bills_client/src/protocol/address.dart' as _i17;
import 'package:simply_bills_client/src/protocol/invoice.dart' as _i18;
export 'address.dart';
export 'event.dart';
export 'example.dart';
export 'faq.dart';
export 'faq_type.dart';
export 'invoice.dart';
export 'invoice_item.dart';
export 'invoice_status.dart';
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
    if (t == _i3.Event) {
      return _i3.Event.fromJson(data) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data) as T;
    }
    if (t == _i5.Faq) {
      return _i5.Faq.fromJson(data) as T;
    }
    if (t == _i6.FaqType) {
      return _i6.FaqType.fromJson(data) as T;
    }
    if (t == _i7.Invoice) {
      return _i7.Invoice.fromJson(data) as T;
    }
    if (t == _i8.InvoiceItem) {
      return _i8.InvoiceItem.fromJson(data) as T;
    }
    if (t == _i9.InvoiceStatus) {
      return _i9.InvoiceStatus.fromJson(data) as T;
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
    if (t == _i1.getType<_i3.Event?>()) {
      return (data != null ? _i3.Event.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Faq?>()) {
      return (data != null ? _i5.Faq.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.FaqType?>()) {
      return (data != null ? _i6.FaqType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Invoice?>()) {
      return (data != null ? _i7.Invoice.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.InvoiceItem?>()) {
      return (data != null ? _i8.InvoiceItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.InvoiceStatus?>()) {
      return (data != null ? _i9.InvoiceStatus.fromJson(data) : null) as T;
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
    if (t == _i1.getType<List<_i14.Invoice>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Invoice>(e)).toList()
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
    if (t == List<_i16.UserInfo>) {
      return (data as List).map((e) => deserialize<_i16.UserInfo>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.Address>) {
      return (data as List).map((e) => deserialize<_i17.Address>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Invoice>) {
      return (data as List).map((e) => deserialize<_i18.Invoice>(e)).toList()
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
    if (data is _i3.Event) {
      return 'Event';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.Faq) {
      return 'Faq';
    }
    if (data is _i6.FaqType) {
      return 'FaqType';
    }
    if (data is _i7.Invoice) {
      return 'Invoice';
    }
    if (data is _i8.InvoiceItem) {
      return 'InvoiceItem';
    }
    if (data is _i9.InvoiceStatus) {
      return 'InvoiceStatus';
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
    if (data['className'] == 'Event') {
      return deserialize<_i3.Event>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'Faq') {
      return deserialize<_i5.Faq>(data['data']);
    }
    if (data['className'] == 'FaqType') {
      return deserialize<_i6.FaqType>(data['data']);
    }
    if (data['className'] == 'Invoice') {
      return deserialize<_i7.Invoice>(data['data']);
    }
    if (data['className'] == 'InvoiceItem') {
      return deserialize<_i8.InvoiceItem>(data['data']);
    }
    if (data['className'] == 'InvoiceStatus') {
      return deserialize<_i9.InvoiceStatus>(data['data']);
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
