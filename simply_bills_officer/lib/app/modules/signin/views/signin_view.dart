import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/signin_controller.dart';
import 'email_signin_view.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
          surfaceTintColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Center(
          child: EmailSigninView(),
        ),
      ),
    );
  }
}
