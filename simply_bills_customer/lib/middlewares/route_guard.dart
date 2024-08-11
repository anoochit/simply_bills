import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simply_bills_customer/controllers/serverpod_controller.dart';

import '../app/routes/app_pages.dart';

class RouteGuard extends GetMiddleware {
  // redirect
  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<ServerPodController>();
    if (authService.sessionManager.isSignedIn == true) {
      return null;
    }
    return const RouteSettings(name: Routes.SIGNIN);
  }
}
