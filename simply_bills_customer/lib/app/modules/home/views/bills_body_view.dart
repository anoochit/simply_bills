import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../controllers/app_controller.dart';

class BillsBodyView extends GetView<AppController> {
  const BillsBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (controller.userData.isNotEmpty)
          ? buildInvoiceListView(
              customer: controller.userData.first,
              address: controller.userData.first.address)
          : Container(),
    );
  }

  buildInvoiceListView(
      {List<UserAddress>? address, required UserData customer}) {
    if (address!.isNotEmpty) {
      // get invoice
      final List<Invoice> invoices = [];
      for (var e in address) {
        for (var invoice in e.address!.invoices!) {
          if (invoice.status == InvoiceStatus.unpaid) {
            invoices.add(invoice);
          }
        }
      }

      return ListView.builder(
        itemCount: invoices.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ExpansionTile(
              shape: const RoundedRectangleBorder(),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  Text('${customer.userInfo!.userName}'),
                  Text('${address[index].address?.address}'),
                  Text('${address[index].address?.address2}'),
                  const Gap(8.0),
                  Row(
                    children: [
                      Text(
                        'Total : ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(fontSizeDelta: 3),
                      ),
                      Text(
                        '${invoices[index].total}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(fontSizeDelta: 3),
                      ),
                      Text(
                        ' THB',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(fontSizeDelta: 3),
                      ),
                    ],
                  ),
                ],
              ),
              children: [
                ...invoices.map(
                  (e) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: e.items!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Row(
                          children: [
                            Text('${e.items?[index].product?.title}'),
                            const Spacer(),
                            Text('${e.items?[index].total}'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Gap(8.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  child: FilledButton.tonal(
                    onPressed: () {
                      // TODO : do pay button
                    },
                    child: const Text('Pay'),
                  ),
                ),
                const Gap(8.0),
              ],
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}
