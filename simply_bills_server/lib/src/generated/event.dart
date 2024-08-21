import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes

abstract class Event extends _i1.TableRow implements _i1.ProtocolSerialization {
  Event._({
    int? id,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.authorId,
    this.author,
    required this.createdAt,
    required this.publish,
  }) : super(id);

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

  static final t = EventTable();

  static const db = EventRepository._();

  String title;

  DateTime startDate;

  DateTime endDate;

  int authorId;

  _i2.UserInfo? author;

  DateTime createdAt;

  bool publish;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'authorId': authorId,
      if (author != null) 'author': author?.toJsonForProtocol(),
      'createdAt': createdAt.toJson(),
      'publish': publish,
    };
  }

  static EventInclude include({_i2.UserInfoInclude? author}) {
    return EventInclude._(author: author);
  }

  static EventIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    EventInclude? include,
  }) {
    return EventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Event.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Event.t),
      include: include,
    );
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

class EventTable extends _i1.Table {
  EventTable({super.tableRelation}) : super(tableName: 'event') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    startDate = _i1.ColumnDateTime(
      'startDate',
      this,
    );
    endDate = _i1.ColumnDateTime(
      'endDate',
      this,
    );
    authorId = _i1.ColumnInt(
      'authorId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    publish = _i1.ColumnBool(
      'publish',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnDateTime startDate;

  late final _i1.ColumnDateTime endDate;

  late final _i1.ColumnInt authorId;

  _i2.UserInfoTable? _author;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnBool publish;

  _i2.UserInfoTable get author {
    if (_author != null) return _author!;
    _author = _i1.createRelationTable(
      relationFieldName: 'author',
      field: Event.t.authorId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _author!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        startDate,
        endDate,
        authorId,
        createdAt,
        publish,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'author') {
      return author;
    }
    return null;
  }
}

class EventInclude extends _i1.IncludeObject {
  EventInclude._({_i2.UserInfoInclude? author}) {
    _author = author;
  }

  _i2.UserInfoInclude? _author;

  @override
  Map<String, _i1.Include?> get includes => {'author': _author};

  @override
  _i1.Table get table => Event.t;
}

class EventIncludeList extends _i1.IncludeList {
  EventIncludeList._({
    _i1.WhereExpressionBuilder<EventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Event.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Event.t;
}

class EventRepository {
  const EventRepository._();

  final attachRow = const EventAttachRowRepository._();

  Future<List<Event>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.find<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Event?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.findFirstRow<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Event?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.findById<Event>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Event>> insert(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Event>(
      rows,
      transaction: transaction,
    );
  }

  Future<Event> insertRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Event>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Event>> update(
    _i1.Session session,
    List<Event> rows, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Event>(
      rows,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  Future<Event> updateRow(
    _i1.Session session,
    Event row, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Event>(
      row,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  Future<List<Event>> delete(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Event>(
      rows,
      transaction: transaction,
    );
  }

  Future<Event> deleteRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Event>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Event>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Event>(
      where: where(Event.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Event>(
      where: where?.call(Event.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EventAttachRowRepository {
  const EventAttachRowRepository._();

  Future<void> author(
    _i1.Session session,
    Event event,
    _i2.UserInfo author,
  ) async {
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }
    if (author.id == null) {
      throw ArgumentError.notNull('author.id');
    }

    var $event = event.copyWith(authorId: author.id);
    await session.db.updateRow<Event>(
      $event,
      columns: [Event.t.authorId],
    );
  }
}
