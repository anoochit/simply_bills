import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/app/modules/signin/views/email_signin_view.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SignIn'),
          centerTitle: true,
        ),
        body: Center(
          child: EmailSigninView(),
        ),
      ),
    );
  }
}
