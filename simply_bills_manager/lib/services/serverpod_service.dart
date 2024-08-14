import 'package:get/get.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

import '../serverpod.dart';

class ServerpodService extends GetxService {
  /// sign in with email and password
  Future<UserInfo?> signInWithEmailPassword(
      {required String email, required String password, String? scope}) async {
    final authController = EmailAuthController(client.modules.auth);

    // signin
    final result = await authController.signIn(email, password);
    if (result != null) {
      // check user scope
      if (scope != null) {
        String scopeExist = result.scopeNames
            .firstWhere((p) => (p.contains(scope)), orElse: () => '');
        if (scopeExist.isNotEmpty) {
          return result;
        } else {
          await sessionManager.signOut();
          return null;
        }
      } else {
        return result;
      }
    } else {
      return null;
    }
  }

  /// signup with email and password
  Future<bool> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    final authController = EmailAuthController(client.modules.auth);

    return await authController.createAccountRequest(name, email, password);
  }

  /// verify account
  Future<UserInfo?> verifyAccount(
      {required String email, required String verificationCode}) async {
    final authController = EmailAuthController(client.modules.auth);

    final userInfo =
        await authController.validateAccount(email, verificationCode);

    return userInfo;
  }

  /// get FAQ
  Future<List<Faq>> getFAQ() async {
    return await client.faq.getCustomerFAQ();
  }
}
