import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../controllers/app_controller.dart';

class SupportBodyView extends GetView<AppController> {
  const SupportBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (controller.listFaq.isNotEmpty)
          ? ListView.builder(
              itemCount: controller.listFaq.length,
              itemBuilder: (BuildContext context, int index) {
                final faqTitle = controller.listFaq[index].question;
                final faqType = controller.listFaq[index].type;

                return ListTile(
                  title: Text(faqTitle),
                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      child: Text('$faqType'),
                    ),
                  ),
                  onTap: () {
                    //
                  },
                );
              },
            )
          : const Center(
              child: Text('No Data!'),
            ),
    );
  }
}
