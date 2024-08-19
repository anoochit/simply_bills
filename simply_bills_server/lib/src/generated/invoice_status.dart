/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum InvoiceStatus implements _i1.SerializableModel {
  unpaid,
  paid,
  cancel;

  static InvoiceStatus fromJson(String name) {
    switch (name) {
      case 'unpaid':
        return unpaid;
      case 'paid':
        return paid;
      case 'cancel':
        return cancel;
      default:
        throw ArgumentError(
            'Value "$name" cannot be converted to "InvoiceStatus"');
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => name;
}
