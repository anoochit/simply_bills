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
    client = Client(
      'http://$localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();

    sessionManager = SessionManager(caller: client.modules.auth);

    await sessionManager.initialize();
  }

  @override
  void onInit() {
    initServerPodClient();
    super.onInit();
  }

  Future<UserInfo?> signInWithEmailPassword(
      {required String email, required String password}) async {
    final authController = EmailAuthController(client.modules.auth);

    try {
      return await authController.signIn(email, password);
    } catch (e) {
      throw ('$e');
    }
  }

  Future<bool> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    final authController = EmailAuthController(client.modules.auth);

    try {
      return await authController.createAccountRequest(name, email, password);
    } catch (e) {
      throw ('$e');
    }
  }

  Future<UserInfo?> verifyAccount(
      {required String email, required String verificationCode}) async {
    final authController = EmailAuthController(client.modules.auth);

    try {
      final userInfo =
          await authController.validateAccount(email, verificationCode);

      return userInfo;
    } catch (e) {
      throw ('$e');
    }
  }

  bool isSignIn() {
    return sessionManager.isSignedIn;
  }
}
