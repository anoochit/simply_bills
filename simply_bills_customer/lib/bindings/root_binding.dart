import 'package:get/get.dart';
import 'package:simply_bills_customer/controllers/app_controller.dart';

import '../services/serverpod_service.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(ServerpodService());
  }
}
