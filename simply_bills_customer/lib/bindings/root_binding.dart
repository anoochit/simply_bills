import 'package:get/get.dart';

import '../controllers/serverpod_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ServerPodController(), permanent: true);
  }
}
