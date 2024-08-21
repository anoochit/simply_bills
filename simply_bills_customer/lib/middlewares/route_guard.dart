import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../app/routes/app_pages.dart';
import '../serverpod.dart';

class RouteGuard extends GetMiddleware {
  // redirect
  @override
  RouteSettings? redirect(String? route) {
    final isAuthenticated = sessionManager.isSignedIn;
    if (isAuthenticated) {
      return null;
    } else {
      return const RouteSettings(name: Routes.SIGNIN);
    }
  }
}
