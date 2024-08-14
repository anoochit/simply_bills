import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_manager/app/widgets/views/avatar_view.dart';

import '../../../../controllers/app_controller.dart';

class UsersBodyView extends GetView<AppController> {
  const UsersBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (controller.listUser.isNotEmpty)
          ? ListView.builder(
              itemCount: controller.listUser.length,
              itemBuilder: (BuildContext context, int index) {
                // final userId = controller.listUser[index].id;
                final userName = controller.listUser[index].userName;
                final userEmail = controller.listUser[index].email;

                return ListTile(
                  leading: AvatarView(
                      radius: 21, showTitle: false, email: userEmail),
                  title: Text('$userName'),
                  subtitle: Text('$userEmail'),
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
