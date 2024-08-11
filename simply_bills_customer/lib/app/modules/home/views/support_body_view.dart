import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../services/serverpod_service.dart';

class SupportBodyView extends GetView {
  const SupportBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    final serverpodService = Get.find<ServerPodService>();

    return FutureBuilder<List<Faq>>(
      future: serverpodService.getFAQ(),
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
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: ExpansionTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryFixed,
                    leading: Icon(
                      Icons.contact_support_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: Text(faqs[index].question),
                    expandedAlignment: Alignment.topLeft,
                    children: [
                      ListTile(
                        title: Text(faqs[index].answer),
                      ),
                    ],
                  ),
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
