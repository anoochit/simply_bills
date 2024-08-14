import 'package:get/get.dart';
import '../services/serverpod_service.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ServerpodService());
  }
}
