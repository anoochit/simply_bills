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
                final faqQuestion = controller.listFaq[index].question;
                final faqAnswer = controller.listFaq[index].answer;
                return ExpansionTile(
                  shape: const RoundedRectangleBorder(),
                  leading: Icon(
                    Icons.contact_support_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    faqQuestion,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(fontWeightDelta: 3),
                  ),
                  expandedAlignment: Alignment.topLeft,
                  children: [
                    ListTile(
                      title: Text(faqAnswer),
                    ),
                  ],
                );
              },
            )
          : const Center(
              child: Text('No Data!'),
            ),
    );
  }
}
