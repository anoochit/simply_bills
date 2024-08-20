import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../controllers/app_controller.dart';

class HomeBodyView extends GetView<AppController> {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => GridView(
          padding: const EdgeInsets.all(4.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            // total customer
            totalUserCard(
              context: context,
              title: 'Customer',
              scope: UserScope.customer,
            ),
            // total officer
            totalUserCard(
              context: context,
              title: 'Officer',
              scope: UserScope.officer,
            ),
            // total manager
            totalUserCard(
              context: context,
              title: 'Manager',
              scope: UserScope.manager,
            ),
          ],
        ),
      ),
    );
  }

  Widget totalUserCard(
      {required BuildContext context,
      required UserScope scope,
      required String title}) {
    // get item total
    final total = controller.listUser
        .where((p) => (p.scopeNames
            .firstWhere((t) => (t.contains(scope.name)), orElse: () => '')
            .isNotEmpty))
        .length;

    return Card(
      elevation: 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title),
          Text(
            '$total',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
