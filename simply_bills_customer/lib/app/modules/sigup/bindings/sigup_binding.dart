import 'package:get/get.dart';

import '../controllers/sigup_controller.dart';

class SigupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigupController>(
      () => SigupController(),
    );
  }
}
