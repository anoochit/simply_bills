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

abstract class Event implements _i1.SerializableModel {
  Event._({
    this.id,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.authorId,
    this.author,
    required this.createdAt,
    required this.publish,
  });

  factory Event({
    int? id,
    required String title,
    required DateTime startDate,
    required DateTime endDate,
    required int authorId,
    _i2.UserInfo? author,
    required DateTime createdAt,
    required bool publish,
  }) = _EventImpl;

  factory Event.fromJson(Map<String, dynamic> jsonSerialization) {
    return Event(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      startDate:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startDate']),
      endDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      authorId: jsonSerialization['authorId'] as int,
      author: jsonSerialization['author'] == null
          ? null
          : _i2.UserInfo.fromJson(
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

  String title;

  DateTime startDate;

  DateTime endDate;

  int authorId;

  _i2.UserInfo? author;

  DateTime createdAt;

  bool publish;

  Event copyWith({
    int? id,
    String? title,
    DateTime? startDate,
    DateTime? endDate,
    int? authorId,
    _i2.UserInfo? author,
    DateTime? createdAt,
    bool? publish,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
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

class _EventImpl extends Event {
  _EventImpl({
    int? id,
    required String title,
    required DateTime startDate,
    required DateTime endDate,
    required int authorId,
    _i2.UserInfo? author,
    required DateTime createdAt,
    required bool publish,
  }) : super._(
          id: id,
          title: title,
          startDate: startDate,
          endDate: endDate,
          authorId: authorId,
          author: author,
          createdAt: createdAt,
          publish: publish,
        );

  @override
  Event copyWith({
    Object? id = _Undefined,
    String? title,
    DateTime? startDate,
    DateTime? endDate,
    int? authorId,
    Object? author = _Undefined,
    DateTime? createdAt,
    bool? publish,
  }) {
    return Event(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      authorId: authorId ?? this.authorId,
      author: author is _i2.UserInfo? ? author : this.author?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
      publish: publish ?? this.publish,
    );
  }
}
