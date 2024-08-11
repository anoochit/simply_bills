import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../controllers/serverpod_controller.dart';

class SupportBodyView extends GetView<ServerPodController> {
  const SupportBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Faq>>(
      future: controller.getFAQ(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        if (snapshot.hasData) {
          final faqs = snapshot.data;

          if (faqs!.isEmpty) {
            return const Center(child: Text('No FAQ'));
          } else {
            return ListView.builder(
              itemCount: faqs.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                  shape: const RoundedRectangleBorder(),
                  leading: Icon(
                    Icons.contact_support_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    faqs[index].question,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(fontWeightDelta: 3),
                  ),
                  expandedAlignment: Alignment.topLeft,
                  children: [
                    ListTile(
                      title: Text(faqs[index].answer),
                    ),
                  ],
                );
              },
            );
          }
        }

        return const Center(
          child: Text('loading...'),
        );
      },
    );
  }
}
