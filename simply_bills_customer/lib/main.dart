import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/serverpod.dart';

import 'app/routes/app_pages.dart';
import 'bindings/root_binding.dart';

Future<void> main() async {
  // init
  WidgetsFlutterBinding.ensureInitialized();

  // init serverpod
  await initServerPodClient();

  // run app
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialBinding: RootBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
