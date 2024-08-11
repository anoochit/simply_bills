import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../../../../controllers/serverpod_controller.dart';
import '../../../routes/app_pages.dart';

class EmailVerifyView extends GetView<ServerPodController> {
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
                      final result = await controller.signInWithEmailPassword(
                        email: email!,
                        password: password!,
                        scope: UserScope.customer.name,
                      );
                      // check user result update user scope
                      if (result != null) {
                        await controller.client.customerEnpoint
                            .updateToCustomerScope();
                        Get.snackbar('Info', 'Account created!');
                        Get.offAllNamed(Routes.HOME);
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
