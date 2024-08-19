import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../controllers/app_controller.dart';

class AddressBodyView extends GetView<AppController> {
  const AddressBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.listAddress.length,
        itemBuilder: (BuildContext context, int index) {
          final item = controller.listAddress[index];
          final addressLine1 = item.address;
          final addressLine2 = item.address2;
          return ListTile(
            title: Text(addressLine1),
            subtitle: Text(addressLine2),
          );
        },
      ),
    );
  }
}
