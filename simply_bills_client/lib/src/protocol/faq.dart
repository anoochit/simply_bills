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

abstract class Faq implements _i1.SerializableModel {
  Faq._({
    this.id,
    required this.question,
    required this.answer,
    required this.type,
    required this.createdById,
    this.createdBy,
    required this.createdAt,
    required this.publish,
  });

  factory Faq({
    int? id,
    required String question,
    required String answer,
    required _i2.FaqType type,
    required int createdById,
    _i2.User? createdBy,
    required DateTime createdAt,
    required bool publish,
  }) = _FaqImpl;

  factory Faq.fromJson(Map<String, dynamic> jsonSerialization) {
    return Faq(
      id: jsonSerialization['id'] as int?,
      question: jsonSerialization['question'] as String,
      answer: jsonSerialization['answer'] as String,
      type: _i2.FaqType.fromJson((jsonSerialization['type'] as String)),
      createdById: jsonSerialization['createdById'] as int,
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['createdBy'] as Map<String, dynamic>)),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      publish: jsonSerialization['publish'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String question;

  String answer;

  _i2.FaqType type;

  int createdById;

  _i2.User? createdBy;

  DateTime createdAt;

  bool publish;

  Faq copyWith({
    int? id,
    String? question,
    String? answer,
    _i2.FaqType? type,
    int? createdById,
    _i2.User? createdBy,
    DateTime? createdAt,
    bool? publish,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'question': question,
      'answer': answer,
      'type': type.toJson(),
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      'createdAt': createdAt.toJson(),
      'publish': publish,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FaqImpl extends Faq {
  _FaqImpl({
    int? id,
    required String question,
    required String answer,
    required _i2.FaqType type,
    required int createdById,
    _i2.User? createdBy,
    required DateTime createdAt,
    required bool publish,
  }) : super._(
          id: id,
          question: question,
          answer: answer,
          type: type,
          createdById: createdById,
          createdBy: createdBy,
          createdAt: createdAt,
          publish: publish,
        );

  @override
  Faq copyWith({
    Object? id = _Undefined,
    String? question,
    String? answer,
    _i2.FaqType? type,
    int? createdById,
    Object? createdBy = _Undefined,
    DateTime? createdAt,
    bool? publish,
  }) {
    return Faq(
      id: id is int? ? id : this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      type: type ?? this.type,
      createdById: createdById ?? this.createdById,
      createdBy:
          createdBy is _i2.User? ? createdBy : this.createdBy?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
      publish: publish ?? this.publish,
    );
  }
}
