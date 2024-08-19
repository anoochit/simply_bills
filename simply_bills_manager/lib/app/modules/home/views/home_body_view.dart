import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';
import 'package:simply_bills_manager/controllers/app_controller.dart';

class HomeBodyView extends GetView<AppController> {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            // total customer
            totalUserCard(
              title: 'Customer',
              scope: UserScope.customer,
              context: context,
            ),
            // total officer
            totalUserCard(
              title: 'Officer',
              scope: UserScope.officer,
              context: context,
            ),
            // total manager
            totalUserCard(
              title: 'Manager',
              scope: UserScope.manager,
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget totalUserCard(
      {required UserScope scope,
      required String title,
      required BuildContext context}) {
    final total = controller.listUser
        .where(
          (p) => (p.scopeNames
              .firstWhere((t) => (t.contains(scope.name)), orElse: () => '')
              .isNotEmpty),
        )
        .length;

    return Card(
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
