import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:simply_bills_manager/serverpod.dart';

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
    log('load data');
    final serverpodService = Get.find<ServerpodService>();
    // load users
    serverpodService.loadUser();
    // load faq
    serverpodService.loadFaq();
    // load addree
    serverpodService.loadAddress();
    // load invoice
    serverpodService.loadInvoice();
  }
}
