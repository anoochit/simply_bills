import 'package:flutter/material.dart';

import 'package:get/get.dart';

// import 'app/data/services/serverpod_service.dart';
import 'app/routes/app_pages.dart';

void main() {
  // init widgets
  WidgetsFlutterBinding.ensureInitialized();

  // init serverpod
  // ServerPodService.intialized();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
