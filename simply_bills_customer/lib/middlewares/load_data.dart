import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../serverpod.dart';
import '../services/serverpod_service.dart';

class LoadData extends GetMiddleware {
  // redirect
  @override
  RouteSettings? redirect(String? route) {
    if (sessionManager.isSignedIn) {
      // load data
      ServerpodService service = Get.find<ServerpodService>();
      // load faq
      service.loadfaq();
      // load user data
      service.loadUserData();
    }

    return null;
  }
}
