import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../serverpod.dart';
import '../services/serverpod_service.dart';

class LoadData extends GetMiddleware {
  // redirect
  @override
  RouteSettings? redirect(String? route) {
    if (sessionManager.isSignedIn) {
      _loadData();
    }

    return null;
  }

  void _loadData() {
    final serverpodService = Get.find<ServerpodService>();
    // load faq
    serverpodService.loadFaq();
  }
}
