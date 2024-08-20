import 'dart:developer';
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart' as scanner;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';
import 'package:simply_bills_customer/services/serverpod_service.dart';

import '../../../controllers/app_controller.dart';

class AddressButtonView extends GetView<AppController> {
  const AddressButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (controller.userData.isEmpty)
          ? pageViewAddress(context, children: [Container()])
          : pageViewAddress(
              context,
              children: (controller.userData.first.address!.isEmpty)
                  ? [
                      addressAddButton(context,
                          userData: controller.userData.first)
                    ]
                  : List.generate(
                      ((controller.userData.first.address!.length) + 1),
                      (index) {
                      if (index == controller.userData.first.address!.length) {
                        return addressAddButton(context,
                            userData: controller.userData.first);
                      } else {
                        return addressItem(context,
                            userData: controller.userData.first,
                            address: controller
                                .userData.first.address![index].address!);
                      }
                    }),
            ),
    );
  }

  // pageview address
  SizedBox pageViewAddress(BuildContext context,
      {required List<Widget> children}) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width * 2 / 3.6,
      child: PageView(children: children),
    );
  }

  // address item
  Widget addressItem(BuildContext context,
      {required Address address, required UserData userData}) {
    final name = userData.userInfo!.userName;
    final addressL1 = address.address;
    final addressL2 = address.address2;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
            onTap: () {
              //
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Text('$name'),
                  Text('$addressL1'),
                  Text('$addressL2'),
                ],
              ),
            )),
      ),
    );
  }

// address add button
  Widget addressAddButton(BuildContext context, {required UserData userData}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () async {
            // open qrcode scanner to add new address
            await Get.to(
              scanner.AiBarcodeScanner(
                // force blank bootomsheet
                bottomSheetBuilder: (context, controller) => const SizedBox(),
                hideSheetTitle: true,
                controller: scanner.MobileScannerController(
                  detectionSpeed: scanner.DetectionSpeed.noDuplicates,
                ),
                onDetect: (scanner.BarcodeCapture capture) async {
                  // show barcode value
                  final String? scannedValue =
                      capture.barcodes.first.displayValue;
                  log('$scannedValue');

                  // find and add address
                  if (scannedValue != null) {
                    final userAddress =
                        await Get.find<ServerpodService>().addCustomerAddress(
                      uuid: scannedValue,
                      userDataId: userData.id!,
                    );

                    if (userAddress == null) {
                      Get.back();
                      Get.snackbar(
                          'Error', 'Cannot add address OR already added');
                    } else {
                      Get.back();
                      Get.snackbar('Info', 'Address added');
                    }
                  } else {
                    Get.snackbar('Error', 'Address not found');
                    Get.back();
                  }
                },
              ),
            );
          },
          child: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('+'),
                Text('Add new address'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
