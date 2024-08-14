import 'dart:developer';

import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

late SessionManager sessionManager;
late Client client;

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
    } else {
      log('user signed out ');
    }
  });

  // session manager init
  await sessionManager.initialize();
}
