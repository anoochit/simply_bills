/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Faq extends _i1.TableRow implements _i1.ProtocolSerialization {
  Faq._({
    int? id,
    required this.question,
    required this.answer,
    required this.type,
    required this.createdById,
    this.createdBy,
    required this.createdAt,
    required this.publish,
  }) : super(id);

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

  static final t = FaqTable();

  static const db = FaqRepository._();

  String question;

  String answer;

  _i2.FaqType type;

  int createdById;

  _i2.User? createdBy;

  DateTime createdAt;

  bool publish;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'question': question,
      'answer': answer,
      'type': type.toJson(),
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJsonForProtocol(),
      'createdAt': createdAt.toJson(),
      'publish': publish,
    };
  }

  static FaqInclude include({_i2.UserInclude? createdBy}) {
    return FaqInclude._(createdBy: createdBy);
  }

  static FaqIncludeList includeList({
    _i1.WhereExpressionBuilder<FaqTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FaqTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FaqTable>? orderByList,
    FaqInclude? include,
  }) {
    return FaqIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Faq.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Faq.t),
      include: include,
    );
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

class FaqTable extends _i1.Table {
  FaqTable({super.tableRelation}) : super(tableName: 'faq') {
    question = _i1.ColumnString(
      'question',
      this,
    );
    answer = _i1.ColumnString(
      'answer',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    createdById = _i1.ColumnInt(
      'createdById',
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

  late final _i1.ColumnString question;

  late final _i1.ColumnString answer;

  late final _i1.ColumnEnum<_i2.FaqType> type;

  late final _i1.ColumnInt createdById;

  _i2.UserTable? _createdBy;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnBool publish;

  _i2.UserTable get createdBy {
    if (_createdBy != null) return _createdBy!;
    _createdBy = _i1.createRelationTable(
      relationFieldName: 'createdBy',
      field: Faq.t.createdById,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _createdBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        question,
        answer,
        type,
        createdById,
        createdAt,
        publish,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'createdBy') {
      return createdBy;
    }
    return null;
  }
}

class FaqInclude extends _i1.IncludeObject {
  FaqInclude._({_i2.UserInclude? createdBy}) {
    _createdBy = createdBy;
  }

  _i2.UserInclude? _createdBy;

  @override
  Map<String, _i1.Include?> get includes => {'createdBy': _createdBy};

  @override
  _i1.Table get table => Faq.t;
}

class FaqIncludeList extends _i1.IncludeList {
  FaqIncludeList._({
    _i1.WhereExpressionBuilder<FaqTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Faq.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Faq.t;
}

class FaqRepository {
  const FaqRepository._();

  final attachRow = const FaqAttachRowRepository._();

  Future<List<Faq>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FaqTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FaqTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FaqTable>? orderByList,
    _i1.Transaction? transaction,
    FaqInclude? include,
  }) async {
    return session.db.find<Faq>(
      where: where?.call(Faq.t),
      orderBy: orderBy?.call(Faq.t),
      orderByList: orderByList?.call(Faq.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Faq?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FaqTable>? where,
    int? offset,
    _i1.OrderByBuilder<FaqTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FaqTable>? orderByList,
    _i1.Transaction? transaction,
    FaqInclude? include,
  }) async {
    return session.db.findFirstRow<Faq>(
      where: where?.call(Faq.t),
      orderBy: orderBy?.call(Faq.t),
      orderByList: orderByList?.call(Faq.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Faq?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FaqInclude? include,
  }) async {
    return session.db.findById<Faq>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Faq>> insert(
    _i1.Session session,
    List<Faq> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Faq>(
      rows,
      transaction: transaction,
    );
  }

  Future<Faq> insertRow(
    _i1.Session session,
    Faq row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Faq>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Faq>> update(
    _i1.Session session,
    List<Faq> rows, {
    _i1.ColumnSelections<FaqTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Faq>(
      rows,
      columns: columns?.call(Faq.t),
      transaction: transaction,
    );
  }

  Future<Faq> updateRow(
    _i1.Session session,
    Faq row, {
    _i1.ColumnSelections<FaqTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Faq>(
      row,
      columns: columns?.call(Faq.t),
      transaction: transaction,
    );
  }

  Future<List<Faq>> delete(
    _i1.Session session,
    List<Faq> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Faq>(
      rows,
      transaction: transaction,
    );
  }

  Future<Faq> deleteRow(
    _i1.Session session,
    Faq row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Faq>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Faq>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FaqTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Faq>(
      where: where(Faq.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FaqTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Faq>(
      where: where?.call(Faq.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FaqAttachRowRepository {
  const FaqAttachRowRepository._();

  Future<void> createdBy(
    _i1.Session session,
    Faq faq,
    _i2.User createdBy,
  ) async {
    if (faq.id == null) {
      throw ArgumentError.notNull('faq.id');
    }
    if (createdBy.id == null) {
      throw ArgumentError.notNull('createdBy.id');
    }

    var $faq = faq.copyWith(createdById: createdBy.id);
    await session.db.updateRow<Faq>(
      $faq,
      columns: [Faq.t.createdById],
    );
  }
}
