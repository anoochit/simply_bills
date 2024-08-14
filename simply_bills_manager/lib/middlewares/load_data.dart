import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simply_bills_manager/serverpod.dart';

import '../controllers/app_controller.dart';
import '../services/serverpod_service.dart';

class LoadData extends GetMiddleware {
  // redirect
  @override
  RouteSettings? redirect(String? route) {
    if (sessionManager.isSignedIn) {
      final appController = Get.find<AppController>();
      final serverpodService = Get.find<ServerpodService>();

      // load users
      serverpodService.getUser().then((value) {
        appController.listUser.value = value;
      });

      // load faq
      serverpodService.getFAQ().then((value) {
        appController.listFaq.value = value;
      });
    }

    return null;
  }
}