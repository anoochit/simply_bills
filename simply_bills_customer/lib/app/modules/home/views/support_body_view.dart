import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../services/serverpod_service.dart';
import '../../../routes/app_pages.dart';

class SupportBodyView extends GetView {
  const SupportBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'SupportBodyView is working',
            style: TextStyle(fontSize: 20),
          ),
          FilledButton(
            onPressed: () {
              final authService = Get.find<ServerPodService>();

              authService.sessionManager
                  .signOut()
                  .then((v) => Get.offAllNamed(Routes.SIGNIN));
            },
            child: const Text('Signout'),
          )
        ],
      ),
    );
  }
}
