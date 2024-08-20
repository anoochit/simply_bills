import 'package:get/get.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:simply_bills_client/simply_bills_client.dart';
import 'package:simply_bills_manager/controllers/app_controller.dart';

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

  /// get FAQ
  Future<List<Faq>> getFAQ() async {
    return await client.faq.getFAQ();
  }

  /// get user
  Future<List<UserInfo>> getUser() async {
    return await client.manager.getUsers();
  }

  /// get address
  Future<List<Address>> getAddress() async {
    return await client.manager.getAddress();
  }

  /// get invoice
  Future<List<Invoice>> getInvoice() async {
    return await client.manager.getInvoice();
  }

  // load users
  loadUser() {
    getUser().then((value) {
      Get.find<AppController>().listUser.value = value;
    });
  }

  // load faq
  loadFaq() {
    getFAQ().then((value) {
      Get.find<AppController>().listFaq.value = value;
    });
  }

  // load addree
  loadAddress() {
    getAddress().then((value) {
      Get.find<AppController>().listAddress.value = value;
    });
  }

  // load invoice
  loadInvoice() {
    getInvoice().then((value) {
      Get.find<AppController>().listInvoice.value = value;
    });
  }
}
