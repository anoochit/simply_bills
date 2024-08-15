import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../controllers/app_controller.dart';

class SupportBodyView extends GetView<AppController> {
  const SupportBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(child: Text('Customer')),
              Tab(child: Text('Officer')),
              Tab(child: Text('Manager')),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // customer faq
                showFaq(faqType: FaqType.customer),
                // officer faq
                showFaq(faqType: FaqType.officer),
                // manager faq
                showFaq(faqType: FaqType.manager),
              ],
            ),
          )
        ],
      ),
    );
  }

  showFaq({required FaqType faqType}) {
    return Obx(() {
      final listFaq =
          controller.listFaq.where((p) => (p.type == faqType)).toList();
      return ListView.builder(
        itemCount: listFaq.length,
        itemBuilder: (BuildContext context, int index) {
          final question = listFaq[index].question;
          final answer = listFaq[index].answer;
          return ListTile(
            // leading: const Icon(Icons.contact_support_outlined),
            title: Text(
              question,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              answer,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              // open faq
            },
          );
        },
      );
    });
  }
}
