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
    required this.quantity,
    required this.unitPrice,
    required this.total,
    required this.invoiceId,
    this.invoice,
  }) : super(id);

  factory InvoiceItem({
    int? id,
    required int productId,
    _i2.Product? product,
    required double quantity,
    required double unitPrice,
    required double total,
    required int invoiceId,
    _i2.Invoice? invoice,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      product: jsonSerialization['product'] == null
          ? null
          : _i2.Product.fromJson(
              (jsonSerialization['product'] as Map<String, dynamic>)),
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      total: (jsonSerialization['total'] as num).toDouble(),
      invoiceId: jsonSerialization['invoiceId'] as int,
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i2.Invoice.fromJson(
              (jsonSerialization['invoice'] as Map<String, dynamic>)),
    );
  }

  static final t = InvoiceItemTable();

  static const db = InvoiceItemRepository._();

  int productId;

  _i2.Product? product;

  double quantity;

  double unitPrice;

  double total;

  int invoiceId;

  _i2.Invoice? invoice;

  @override
  _i1.Table get table => t;

  InvoiceItem copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    double? quantity,
    double? unitPrice,
    double? total,
    int? invoiceId,
    _i2.Invoice? invoice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'quantity': quantity,
      'unitPrice': unitPrice,
      'total': total,
      'invoiceId': invoiceId,
      if (invoice != null) 'invoice': invoice?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJsonForProtocol(),
      'quantity': quantity,
      'unitPrice': unitPrice,
      'total': total,
      'invoiceId': invoiceId,
      if (invoice != null) 'invoice': invoice?.toJsonForProtocol(),
    };
  }

  static InvoiceItemInclude include({
    _i2.ProductInclude? product,
    _i2.InvoiceInclude? invoice,
  }) {
    return InvoiceItemInclude._(
      product: product,
      invoice: invoice,
    );
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
    required double quantity,
    required double unitPrice,
    required double total,
    required int invoiceId,
    _i2.Invoice? invoice,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          quantity: quantity,
          unitPrice: unitPrice,
          total: total,
          invoiceId: invoiceId,
          invoice: invoice,
        );

  @override
  InvoiceItem copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    double? quantity,
    double? unitPrice,
    double? total,
    int? invoiceId,
    Object? invoice = _Undefined,
  }) {
    return InvoiceItem(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      total: total ?? this.total,
      invoiceId: invoiceId ?? this.invoiceId,
      invoice: invoice is _i2.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}

class InvoiceItemTable extends _i1.Table {
  InvoiceItemTable({super.tableRelation}) : super(tableName: 'invoice_item') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    quantity = _i1.ColumnDouble(
      'quantity',
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
    invoiceId = _i1.ColumnInt(
      'invoiceId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  late final _i1.ColumnDouble quantity;

  late final _i1.ColumnDouble unitPrice;

  late final _i1.ColumnDouble total;

  late final _i1.ColumnInt invoiceId;

  _i2.InvoiceTable? _invoice;

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

  _i2.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _i1.createRelationTable(
      relationFieldName: 'invoice',
      field: InvoiceItem.t.invoiceId,
      foreignField: _i2.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        quantity,
        unitPrice,
        total,
        invoiceId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    if (relationField == 'invoice') {
      return invoice;
    }
    return null;
  }
}

class InvoiceItemInclude extends _i1.IncludeObject {
  InvoiceItemInclude._({
    _i2.ProductInclude? product,
    _i2.InvoiceInclude? invoice,
  }) {
    _product = product;
    _invoice = invoice;
  }

  _i2.ProductInclude? _product;

  _i2.InvoiceInclude? _invoice;

  @override
  Map<String, _i1.Include?> get includes => {
        'product': _product,
        'invoice': _invoice,
      };

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

  Future<void> invoice(
    _i1.Session session,
    InvoiceItem invoiceItem,
    _i2.Invoice invoice,
  ) async {
    if (invoiceItem.id == null) {
      throw ArgumentError.notNull('invoiceItem.id');
    }
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoiceItem = invoiceItem.copyWith(invoiceId: invoice.id);
    await session.db.updateRow<InvoiceItem>(
      $invoiceItem,
      columns: [InvoiceItem.t.invoiceId],
    );
  }
}
