import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:validation_pro/validate.dart';

import '../../../../controllers/serverpod_controller.dart';
import '../../../routes/app_pages.dart';

class EmailSignupView extends GetView<ServerPodController> {
  EmailSignupView({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // name
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_outlined),
                hintText: 'Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter name';
                }
                return null;
              },
            ),

            const Gap(16.0),
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
                  final result = await controller.signUpWithEmailPassword(
                    name: _nameController.text,
                    email: _emailController.text,
                    password: _passwordController.text,
                  );

                  if (result) {
                    Get.offAllNamed(
                      Routes.VERIFY_ACCOUNT,
                      parameters: {
                        'email': _emailController.text,
                        'password': _passwordController.text
                      },
                    );
                  } else {
                    Get.snackbar(
                      'Error',
                      'Cannot sign up, please change your email or password',
                    );
                  }
                }
              },
              child: const Text('Sing Up'),
            ),

            const Gap(8.0),

            TextButton(
              onPressed: () => Get.offAllNamed(Routes.SIGNIN),
              child: const Text('Already have an account? sign in'),
            ),
            const Gap(16.0),
          ],
        ),
      ),
    );
  }
}
