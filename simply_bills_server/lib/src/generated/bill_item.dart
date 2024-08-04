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

abstract class BillItem extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  BillItem._({
    int? id,
    required this.productId,
    this.product,
    required this.qt,
    required this.unitPrice,
    required this.total,
  }) : super(id);

  factory BillItem({
    int? id,
    required int productId,
    _i2.Product? product,
    required double qt,
    required double unitPrice,
    required double total,
  }) = _BillItemImpl;

  factory BillItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return BillItem(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      product: jsonSerialization['product'] == null
          ? null
          : _i2.Product.fromJson(
              (jsonSerialization['product'] as Map<String, dynamic>)),
      qt: (jsonSerialization['qt'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      total: (jsonSerialization['total'] as num).toDouble(),
    );
  }

  static final t = BillItemTable();

  static const db = BillItemRepository._();

  int productId;

  _i2.Product? product;

  double qt;

  double unitPrice;

  double total;

  @override
  _i1.Table get table => t;

  BillItem copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    double? qt,
    double? unitPrice,
    double? total,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'qt': qt,
      'unitPrice': unitPrice,
      'total': total,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJsonForProtocol(),
      'qt': qt,
      'unitPrice': unitPrice,
      'total': total,
    };
  }

  static BillItemInclude include({_i2.ProductInclude? product}) {
    return BillItemInclude._(product: product);
  }

  static BillItemIncludeList includeList({
    _i1.WhereExpressionBuilder<BillItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BillItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BillItemTable>? orderByList,
    BillItemInclude? include,
  }) {
    return BillItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BillItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BillItem.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BillItemImpl extends BillItem {
  _BillItemImpl({
    int? id,
    required int productId,
    _i2.Product? product,
    required double qt,
    required double unitPrice,
    required double total,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          qt: qt,
          unitPrice: unitPrice,
          total: total,
        );

  @override
  BillItem copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    double? qt,
    double? unitPrice,
    double? total,
  }) {
    return BillItem(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      qt: qt ?? this.qt,
      unitPrice: unitPrice ?? this.unitPrice,
      total: total ?? this.total,
    );
  }
}

class BillItemTable extends _i1.Table {
  BillItemTable({super.tableRelation}) : super(tableName: 'bill_item') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    qt = _i1.ColumnDouble(
      'qt',
      this,
    );
    unitPrice = _i1.ColumnDouble(
      'unitPrice',
      this,
    );
    total = _i1.ColumnDouble(
      'total',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  late final _i1.ColumnDouble qt;

  late final _i1.ColumnDouble unitPrice;

  late final _i1.ColumnDouble total;

  _i2.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: BillItem.t.productId,
      foreignField: _i2.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        qt,
        unitPrice,
        total,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    return null;
  }
}

class BillItemInclude extends _i1.IncludeObject {
  BillItemInclude._({_i2.ProductInclude? product}) {
    _product = product;
  }

  _i2.ProductInclude? _product;

  @override
  Map<String, _i1.Include?> get includes => {'product': _product};

  @override
  _i1.Table get table => BillItem.t;
}

class BillItemIncludeList extends _i1.IncludeList {
  BillItemIncludeList._({
    _i1.WhereExpressionBuilder<BillItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BillItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BillItem.t;
}

class BillItemRepository {
  const BillItemRepository._();

  final attachRow = const BillItemAttachRowRepository._();

  Future<List<BillItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BillItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BillItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BillItemTable>? orderByList,
    _i1.Transaction? transaction,
    BillItemInclude? include,
  }) async {
    return session.db.find<BillItem>(
      where: where?.call(BillItem.t),
      orderBy: orderBy?.call(BillItem.t),
      orderByList: orderByList?.call(BillItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BillItem?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BillItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<BillItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BillItemTable>? orderByList,
    _i1.Transaction? transaction,
    BillItemInclude? include,
  }) async {
    return session.db.findFirstRow<BillItem>(
      where: where?.call(BillItem.t),
      orderBy: orderBy?.call(BillItem.t),
      orderByList: orderByList?.call(BillItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BillItem?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BillItemInclude? include,
  }) async {
    return session.db.findById<BillItem>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BillItem>> insert(
    _i1.Session session,
    List<BillItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<BillItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<BillItem> insertRow(
    _i1.Session session,
    BillItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<BillItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BillItem>> update(
    _i1.Session session,
    List<BillItem> rows, {
    _i1.ColumnSelections<BillItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<BillItem>(
      rows,
      columns: columns?.call(BillItem.t),
      transaction: transaction,
    );
  }

  Future<BillItem> updateRow(
    _i1.Session session,
    BillItem row, {
    _i1.ColumnSelections<BillItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<BillItem>(
      row,
      columns: columns?.call(BillItem.t),
      transaction: transaction,
    );
  }

  Future<List<BillItem>> delete(
    _i1.Session session,
    List<BillItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BillItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<BillItem> deleteRow(
    _i1.Session session,
    BillItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BillItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BillItem>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BillItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<BillItem>(
      where: where(BillItem.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BillItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BillItem>(
      where: where?.call(BillItem.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BillItemAttachRowRepository {
  const BillItemAttachRowRepository._();

  Future<void> product(
    _i1.Session session,
    BillItem billItem,
    _i2.Product product,
  ) async {
    if (billItem.id == null) {
      throw ArgumentError.notNull('billItem.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $billItem = billItem.copyWith(productId: product.id);
    await session.db.updateRow<BillItem>(
      $billItem,
      columns: [BillItem.t.productId],
    );
  }
}
