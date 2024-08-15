import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';
import 'package:simply_bills_manager/app/widgets/views/avatar_view.dart';

import '../../../../controllers/app_controller.dart';

class UsersBodyView extends GetView<AppController> {
  const UsersBodyView({super.key});

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
                // customer
                showUser(scope: UserScope.customer),
                // officer
                showUser(scope: UserScope.officer),
                // manager
                showUser(scope: UserScope.manager),
              ],
            ),
          )
        ],
      ),
    );
  }

  showUser({required UserScope scope}) {
    return Obx(() {
      final listUsers = controller.listUser
          .where((p) => (p.scopeNames
              .firstWhere((c) => (c.contains(scope.name)), orElse: () => '')
              .isNotEmpty))
          .toList();
      return ListView.builder(
        itemCount: listUsers.length,
        itemBuilder: (BuildContext context, int index) {
          final userName = listUsers[index].userName;
          final userEmail = listUsers[index].email;
          return ListTile(
            // leading: AvatarView(
            //   radius: 22,
            //   showTitle: false,
            //   email: userEmail,
            // ),
            title: Text(
              '$userName',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              '$userEmail',
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
