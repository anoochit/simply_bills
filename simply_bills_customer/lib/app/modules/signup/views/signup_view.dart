import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/app/modules/signup/views/email_signup_view.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SignUp'),
          centerTitle: true,
        ),
        body: Center(
          child: EmailSignupView(),
        ),
      ),
    );
  }
}
