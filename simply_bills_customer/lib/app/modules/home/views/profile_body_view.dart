import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/app/routes/app_pages.dart';
import 'package:simply_bills_customer/app/widgets/views/avatar_view.dart';
import 'package:simply_bills_customer/controllers/serverpod_controller.dart';

class ProfileBodyView extends GetView<ServerPodController> {
  const ProfileBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const AvatarView(radius: 64.0, showTitle: true),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Signout'),
          onTap: () {
            //
            controller.sessionManager
                .signOut()
                .then((_) => Get.offAllNamed(Routes.SIGNIN));
          },
        ),
      ],
    );
  }
}
