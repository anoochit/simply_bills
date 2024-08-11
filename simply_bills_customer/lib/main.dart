import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/bindings/root_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
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
