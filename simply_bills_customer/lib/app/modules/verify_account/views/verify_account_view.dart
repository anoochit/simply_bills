import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_account_controller.dart';
import 'email_verify_view.dart';

class VerifyAccountView extends GetView<VerifyAccountController> {
  const VerifyAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    String? email = Get.parameters['email'];
    String? password = Get.parameters['password'];
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Verify Account'),
          centerTitle: true,
        ),
        body: Center(
          child: EmailVerifyView(
            email: email,
            password: password,
          ),
        ),
      ),
    );
  }
}
