import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../serverpod.dart';
import '../../../../services/serverpod_service.dart';
import '../../../routes/app_pages.dart';

class EmailVerifyView extends GetView<ServerpodService> {
  EmailVerifyView({super.key, this.email, this.password});

  final String? email;
  final String? password;
  final _verificationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (email == null)
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FilledButton(
                onPressed: () => Get.offAllNamed(Routes.SIGNUP),
                child: const Text('Back'),
              ),
            ],
          )
        : SizedBox(
            width: 360.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // code
                TextFormField(
                  controller: _verificationCodeController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Verification Code',
                    contentPadding: EdgeInsets.zero,
                  ),
                ),

                const Gap(16.0),

                // button
                FilledButton(
                  onPressed: () async {
                    // verify
                    final verifyResult = await controller.verifyAccount(
                      email: email!,
                      verificationCode: _verificationCodeController.text,
                    );

                    // if pass
                    if (verifyResult != null) {
                      // signin and update user scope
                      final user = await controller.signInWithEmailPassword(
                        email: email!,
                        password: password!,
                      );
                      // check user result update user scope
                      if (user != null) {
                        // update scope
                        await controller.updateToCustomerScope();
                        // create customer data
                        await client.customer.createCustomerData();
                        Get.snackbar('Info', 'Verified account!');
                        Get.offAllNamed(Routes.HOME);
                      } else {
                        Get.snackbar(
                            'Error', 'Cannot signin and update account!');
                        Get.offAllNamed(Routes.SIGNUP);
                      }
                    } else {
                      Get.snackbar('Error', 'Cannot verify account!');
                      Get.offAllNamed(Routes.SIGNUP);
                    }
                  },
                  child: const Text('Verify Account'),
                )
              ],
            ),
          );
  }
}
