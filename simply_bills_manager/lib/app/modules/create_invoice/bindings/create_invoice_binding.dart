import 'package:get/get.dart';

import '../controllers/create_invoice_controller.dart';

class CreateInvoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateInvoiceController>(
      () => CreateInvoiceController(),
    );
  }
}
