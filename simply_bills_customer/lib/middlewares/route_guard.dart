import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simply_bills_customer/services/serverpod_service.dart';

import '../app/routes/app_pages.dart';

class RouteGuard extends GetMiddleware {
  //

  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<ServerPodService>();

    if (authService.sessionManager.isSignedIn) {
      return null;
    }

    return const RouteSettings(name: Routes.SIGNIN);
  }
}
