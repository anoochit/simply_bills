import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart' as scanner;
import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../controllers/app_controller.dart';
import '../../../services/serverpod_service.dart';
import '../../modules/home/controllers/home_controller.dart';

class AddressButtonView extends GetView<AppController> {
  const AddressButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => _buildAddressView(context));
  }

  Widget _buildAddressView(BuildContext context) {
    if (controller.userData.isEmpty) {
      return _pageViewAddress(context, children: [Container()]);
    }

    final user = controller.userData.first;
    final addresses = user.address ?? [];

    return _pageViewAddress(
      context,
      children: [
        ...addresses.map((address) =>
            _addressItem(context, address: address.address, userData: user)),
        _addressAddButton(context, userData: user),
      ],
    );
  }

  Widget _pageViewAddress(BuildContext context,
      {required List<Widget> children}) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.width * 2 / 3.6,
      child: PageView(
        children: children,
      ),
    );
  }

  Widget _addressItem(BuildContext context,
      {Address? address, required UserData userData}) {
    return _buildCard(
      context,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userData.userInfo?.userName ?? ''),
            Text(address?.address ?? ''),
            Text(address?.address2 ?? ''),
          ],
        ),
      ),
      onTap: () {
        // navigate to invoice tab
        Get.find<HomeController>().navIndex.value = 1;
      },
    );
  }

  Widget _addressAddButton(BuildContext context, {required UserData userData}) {
    return _buildCard(
      context,
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_circle),
            Text('Add new address'),
          ],
        ),
      ),
      onTap: () => _handleAddressScanning(context, userData),
    );
  }

  Widget _buildCard(BuildContext context,
      {required Widget child, required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }

  Future<void> _handleAddressScanning(
      BuildContext context, UserData userData) async {
    await Get.to(
      scanner.AiBarcodeScanner(
        bottomSheetBuilder: (_, __) => const SizedBox(),
        hideSheetTitle: true,
        controller: scanner.MobileScannerController(
          detectionSpeed: scanner.DetectionSpeed.noDuplicates,
        ),
        onDetect: (capture) => _processScannedBarcode(capture, userData),
      ),
    );
  }

  Future<void> _processScannedBarcode(
      scanner.BarcodeCapture capture, UserData userData) async {
    final scannedValue = capture.barcodes.first.displayValue;
    log('$scannedValue');

    if (scannedValue == null) {
      Get.back();
      Get.snackbar('Error', 'Address not found');
      return;
    }

    final userAddress = await Get.find<ServerpodService>().addCustomerAddress(
      uuid: scannedValue,
      userDataId: userData.id!,
    );

    Get.back();

    if (userAddress == null) {
      Get.snackbar('Error', 'Cannot add address OR already added');
    } else {
      await Get.find<ServerpodService>().loadUserData();
      Get.snackbar('Info', 'Address added');
    }
  }
}
