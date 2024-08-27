// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:serverpod/serverpod.dart';

import '../generated/address.dart';
import '../generated/invoice.dart';
import '../generated/invoice_item.dart';
import '../generated/invoice_status.dart';

class MonthlyWastInvoice extends FutureCall {
  @override
  Future<void> invoke(Session session, SerializableModel? object) async {
    // create invoices

    final addresses = await Address.db.find(session);

    addresses.forEach((address) async {
      // create invoice
      final invoice = await Invoice.db.insertRow(
        session,
        Invoice(
          referenceNo: Uuid().v4(),
          addressId: address.id!,
          total: 40,
          createdAt: DateTime.now(),
          createdById: 1,
          status: InvoiceStatus.unpaid,
        ),
      );

      // create invoice item
      final item = await InvoiceItem.db.insertRow(
        session,
        InvoiceItem(
          productId: 1,
          quantity: 1,
          unitPrice: 40.0,
          total: 40.0,
          invoiceId: invoice.id!,
        ),
      );

      // attch invoice item to invoice
      Invoice.db.attachRow.items(session, invoice, item);
    });

    // create wast invoice future call for next month
    DateTime nextDate = DateTime.now().day > 25
        ? DateTime(DateTime.now().year, DateTime.now().month + 1, 25, 0, 0)
        : DateTime(DateTime.now().year, DateTime.now().month, 25, 0, 0);

    await session.serverpod
        .futureCallAtTime('monthlyWastInvoice', null, nextDate);
  }
}
