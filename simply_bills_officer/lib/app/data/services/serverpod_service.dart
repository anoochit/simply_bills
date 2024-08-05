import 'dart:developer';

import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

class ServerPodService {
  late Client client;
  late SessionManager sessionManager;

  // intialized
  Future<void> intialized() async {
    client = Client(
      'http://$localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();

    sessionManager = SessionManager(
      caller: client.modules.auth,
    );

    await sessionManager.initialize();

    sessionManager.addListener(() {
      if (sessionManager.isSignedIn) {
        log('user signed in');
      } else {
        log('user signed out');
      }
    });

    log('Serverpod initialized');
  }
}
