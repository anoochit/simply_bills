import 'package:get/get.dart';
import 'package:simply_bills_customer/services/serverpod_service.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ServerPodService());
  }
}
