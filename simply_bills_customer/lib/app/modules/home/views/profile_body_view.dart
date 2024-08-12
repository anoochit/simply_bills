import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../serverpod.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/views/avatar_view.dart';

class ProfileBodyView extends GetView {
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
            sessionManager
                .signOut()
                .then((_) => Get.offAllNamed(Routes.SIGNIN));
          },
        ),
      ],
    );
  }
}
