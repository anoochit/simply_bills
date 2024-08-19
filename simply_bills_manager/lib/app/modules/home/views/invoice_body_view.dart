import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../controllers/app_controller.dart';

class InvoiceBodyView extends GetView<AppController> {
  const InvoiceBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(child: Text('Unpaid')),
              Tab(child: Text('Paid')),
              Tab(child: Text('Cancel')),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // unpaid
                showInvoice(status: InvoiceStatus.unpaid),
                // paid
                showInvoice(status: InvoiceStatus.paid),
                // cancel
                showInvoice(status: InvoiceStatus.cancel),
              ],
            ),
          )
        ],
      ),
    );
  }

  showInvoice({required InvoiceStatus status}) {
    return Obx(() {
      final listUsers =
          controller.listInvoice.where((p) => (p.status == status)).toList();
      return ListView.builder(
        itemCount: listUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: const Text(
              'cc',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              // show user data
            },
          );
        },
      );
    });
  }
}
