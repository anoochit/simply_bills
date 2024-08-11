import 'dart:developer';

import 'package:get/get.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

class ServerPodService extends GetxService {
  late SessionManager sessionManager;
  late Client client;

  // initial serverpod client
  Future<void> initServerPodClient() async {
    /// serverpod client
    client = Client(
      'http://$localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();

    /// serverpod session manager
    sessionManager = SessionManager(caller: client.modules.auth);

    // session manager listener
    sessionManager.addListener(() {
      if (sessionManager.isSignedIn) {
        log('user signed in ');
      } else {
        log('user signed out ');
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

  /// Email and password  sign in with specific user's scope
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

  Future<bool> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    final authController = EmailAuthController(client.modules.auth);

    return await authController.createAccountRequest(name, email, password);
  }

  Future<UserInfo?> verifyAccount(
      {required String email, required String verificationCode}) async {
    final authController = EmailAuthController(client.modules.auth);

    final userInfo =
        await authController.validateAccount(email, verificationCode);

    return userInfo;
  }

  bool isSignIn() {
    return sessionManager.isSignedIn;
  }
}
