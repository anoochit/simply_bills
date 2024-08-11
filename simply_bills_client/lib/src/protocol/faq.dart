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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i3;

abstract class Faq implements _i1.SerializableModel {
  Faq._({
    this.id,
    required this.question,
    required this.answer,
    required this.type,
    required this.authorId,
    this.author,
    required this.createdAt,
    required this.publish,
  });

  factory Faq({
    int? id,
    required String question,
    required String answer,
    required _i2.FaqType type,
    required int authorId,
    _i3.UserInfo? author,
    required DateTime createdAt,
    required bool publish,
  }) = _FaqImpl;

  factory Faq.fromJson(Map<String, dynamic> jsonSerialization) {
    return Faq(
      id: jsonSerialization['id'] as int?,
      question: jsonSerialization['question'] as String,
      answer: jsonSerialization['answer'] as String,
      type: _i2.FaqType.fromJson((jsonSerialization['type'] as String)),
      authorId: jsonSerialization['authorId'] as int,
      author: jsonSerialization['author'] == null
          ? null
          : _i3.UserInfo.fromJson(
              (jsonSerialization['author'] as Map<String, dynamic>)),
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

  int authorId;

  _i3.UserInfo? author;

  DateTime createdAt;

  bool publish;

  Faq copyWith({
    int? id,
    String? question,
    String? answer,
    _i2.FaqType? type,
    int? authorId,
    _i3.UserInfo? author,
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
      'authorId': authorId,
      if (author != null) 'author': author?.toJson(),
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
    required int authorId,
    _i3.UserInfo? author,
    required DateTime createdAt,
    required bool publish,
  }) : super._(
          id: id,
          question: question,
          answer: answer,
          type: type,
          authorId: authorId,
          author: author,
          createdAt: createdAt,
          publish: publish,
        );

  @override
  Faq copyWith({
    Object? id = _Undefined,
    String? question,
    String? answer,
    _i2.FaqType? type,
    int? authorId,
    Object? author = _Undefined,
    DateTime? createdAt,
    bool? publish,
  }) {
    return Faq(
      id: id is int? ? id : this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      type: type ?? this.type,
      authorId: authorId ?? this.authorId,
      author: author is _i3.UserInfo? ? author : this.author?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
      publish: publish ?? this.publish,
    );
  }
}
