import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:simply_bills_client/simply_bills_client.dart';
import 'package:validation_pro/validate.dart';

import '../../../../serverpod.dart';
import '../../../../services/serverpod_service.dart';
import '../../../routes/app_pages.dart';

class EmailSigninView extends GetView<ServerpodService> {
  EmailSigninView({
    super.key,
  });

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log('is signed in = ${sessionManager.isSignedIn}');

    return SizedBox(
      width: 360,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // email
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.alternate_email),
                hintText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!Validate.isEmail(value!)) {
                  return 'Enter email address';
                }
                return null;
              },
            ),

            const Gap(16.0),

            // password
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                hintText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (!Validate.isPassword(value!)) {
                  return 'Min 6 and Max 12 characters.\nAt least one uppercase character.\nAt least one number.\nAt least one special character [@#\$!%?]';
                }
                return null;
              },
            ),

            const Gap(16.0),

            // signin button
            FilledButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // signins
                  final result = await controller.signInWithEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    scope: UserScope.manager.name,
                  );
                  // check signed in result
                  if (result != null) {
                    log('signed in as = ${result.email}');
                    Get.offAllNamed(Routes.HOME);
                  } else {
                    Get.snackbar(
                      'Error',
                      'Cannot sign in, please change your email or password',
                    );
                  }
                }
              },
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
