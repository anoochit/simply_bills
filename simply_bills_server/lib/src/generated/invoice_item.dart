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

abstract class InvoiceItem extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  InvoiceItem._({
    int? id,
    required this.productId,
    this.product,
    required this.qt,
    required this.unitPrice,
    required this.total,
  }) : super(id);

  factory InvoiceItem({
    int? id,
    required int productId,
    _i2.Product? product,
    required double qt,
    required double unitPrice,
    required double total,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
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

  static final t = InvoiceItemTable();

  static const db = InvoiceItemRepository._();

  int productId;

  _i2.Product? product;

  double qt;

  double unitPrice;

  double total;

  @override
  _i1.Table get table => t;

  InvoiceItem copyWith({
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

  static InvoiceItemInclude include({_i2.ProductInclude? product}) {
    return InvoiceItemInclude._(product: product);
  }

  static InvoiceItemIncludeList includeList({
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    InvoiceItemInclude? include,
  }) {
    return InvoiceItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(InvoiceItem.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceItemImpl extends InvoiceItem {
  _InvoiceItemImpl({
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
  InvoiceItem copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    double? qt,
    double? unitPrice,
    double? total,
  }) {
    return InvoiceItem(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      qt: qt ?? this.qt,
      unitPrice: unitPrice ?? this.unitPrice,
      total: total ?? this.total,
    );
  }
}

class InvoiceItemTable extends _i1.Table {
  InvoiceItemTable({super.tableRelation}) : super(tableName: 'invoice_item') {
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
      field: InvoiceItem.t.productId,
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

class InvoiceItemInclude extends _i1.IncludeObject {
  InvoiceItemInclude._({_i2.ProductInclude? product}) {
    _product = product;
  }

  _i2.ProductInclude? _product;

  @override
  Map<String, _i1.Include?> get includes => {'product': _product};

  @override
  _i1.Table get table => InvoiceItem.t;
}

class InvoiceItemIncludeList extends _i1.IncludeList {
  InvoiceItemIncludeList._({
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(InvoiceItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => InvoiceItem.t;
}

class InvoiceItemRepository {
  const InvoiceItemRepository._();

  final attachRow = const InvoiceItemAttachRowRepository._();

  Future<List<InvoiceItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceItemInclude? include,
  }) async {
    return session.db.find<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<InvoiceItem?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceItemInclude? include,
  }) async {
    return session.db.findFirstRow<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<InvoiceItem?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    InvoiceItemInclude? include,
  }) async {
    return session.db.findById<InvoiceItem>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<InvoiceItem>> insert(
    _i1.Session session,
    List<InvoiceItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<InvoiceItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<InvoiceItem> insertRow(
    _i1.Session session,
    InvoiceItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<InvoiceItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<InvoiceItem>> update(
    _i1.Session session,
    List<InvoiceItem> rows, {
    _i1.ColumnSelections<InvoiceItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<InvoiceItem>(
      rows,
      columns: columns?.call(InvoiceItem.t),
      transaction: transaction,
    );
  }

  Future<InvoiceItem> updateRow(
    _i1.Session session,
    InvoiceItem row, {
    _i1.ColumnSelections<InvoiceItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<InvoiceItem>(
      row,
      columns: columns?.call(InvoiceItem.t),
      transaction: transaction,
    );
  }

  Future<List<InvoiceItem>> delete(
    _i1.Session session,
    List<InvoiceItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<InvoiceItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<InvoiceItem> deleteRow(
    _i1.Session session,
    InvoiceItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<InvoiceItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<InvoiceItem>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InvoiceItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<InvoiceItem>(
      where: where(InvoiceItem.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class InvoiceItemAttachRowRepository {
  const InvoiceItemAttachRowRepository._();

  Future<void> product(
    _i1.Session session,
    InvoiceItem invoiceItem,
    _i2.Product product,
  ) async {
    if (invoiceItem.id == null) {
      throw ArgumentError.notNull('invoiceItem.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $invoiceItem = invoiceItem.copyWith(productId: product.id);
    await session.db.updateRow<InvoiceItem>(
      $invoiceItem,
      columns: [InvoiceItem.t.productId],
    );
  }
}
