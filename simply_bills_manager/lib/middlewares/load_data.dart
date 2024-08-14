import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simply_bills_manager/controllers/app_controller.dart';
import 'package:simply_bills_manager/services/serverpod_service.dart';

class LoadData extends GetMiddleware {
  // redirect
  @override
  RouteSettings? redirect(String? route) {
    final appController = Get.find<AppController>();
    final serverpodService = Get.find<ServerpodService>();

    // load users

    serverpodService.getUser();

    return null;
  }
}
