import 'package:get/get.dart';

import '../controllers/verify_controller.dart';

class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyController>(
      () => VerifyController(),
    );
  }
}
