import 'dart:developer';

import 'package:get/get.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

class ServerPodController extends GetxController {
  late SessionManager sessionManager;
  late Client client;

  late UserInfo? userInfo;

  RxBool isSignedIn = false.obs;

  // initial serverpod client
  Future<void> initServerPodClient() async {
    log('Serverpod init');

    // serverpod client
    client = Client(
      'http://$localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();

    // serverpod session manager
    sessionManager = SessionManager(caller: client.modules.auth);

    // session manager listener
    log('Session mananger listenser');
    sessionManager.addListener(() {
      if (sessionManager.isSignedIn) {
        log('user already signed in ');
        userInfo = sessionManager.signedInUser;
        log('user = ${userInfo!.email} ');
        isSignedIn.value = true;
      } else {
        log('user signed out ');
        userInfo = null;
        isSignedIn.value = false;
      }
    });

    // session manager init
    await sessionManager.initialize();
  }

  @override
  void onInit() {
    initServerPodClient();
    super.onInit();
  }

  /// sign in with email and password
  Future<UserInfo?> signInWithEmailPassword(
      {required String email,
      required String password,
      required String scope}) async {
    final authController = EmailAuthController(client.modules.auth);

    // signin
    final result = await authController.signIn(email, password);
    if (result != null) {
      // check user scope
      String scopeExist = result.scopeNames
          .firstWhere((p) => (p.contains(scope)), orElse: () => '');
      if (scopeExist.isNotEmpty) {
        return result;
      } else {
        await sessionManager.signOut();
        return null;
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

  // --- customer features ---
  /// get FAQ
  Future<List<Faq>> getFAQ() async {
    return await client.faq.getCustomerFAQ();
  }
}
