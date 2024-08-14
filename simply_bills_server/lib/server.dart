import 'package:serverpod/serverpod.dart';
import 'package:simply_bills_server/src/web/routes/root.dart';
import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // add auth config
  auth.AuthConfig.set(auth.AuthConfig(
    sendValidationEmail: (session, email, validationCode) async {
      print('Validation code: $validationCode');
      session.log('Code for $email is $validationCode');
      return true;
    },
    sendPasswordResetEmail: (session, userInfo, validationCode) async {
      print('Validation code: $validationCode');
      session.log('Code for ${userInfo.userName} is $validationCode');
      return true;
    },
  ));

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  // add sample data
  // await initData(pod);

  // Start the server.
  await pod.start();
}

/// add sample data
Future<void> initData(Serverpod pod) async {
  final session = await pod.createSession();

  final addressTotal = await Address.db.count(session);

  // if no address add sample data
  if (addressTotal == 0) {
    for (int i = 0; i < 10; i++) {
      final uuid = Uuid().v4();
      session.log(uuid);
      Address.db.insertRow(
        session,
        Address(
          uid: uuid,
          address: '${100 + i} Moo 10, Suranaree',
          address2: 'Muang, Nakhon Ratchasima 30000',
        ),
      );
    }
  }

  final faqTotal = await Faq.db.count(session);

  if (faqTotal == 0) {
    // customer faq
    for (int i = 0; i < 10; i++) {
      Faq.db.insertRow(
        session,
        Faq(
            question: 'Question',
            answer:
                'Nam malesuada lectus sed augue elementum malesuada. Aenean ipsum ligula, euismod eu odio et, ullamcorper lobortis turpis.',
            type: FaqType.customer,
            authorId: 1,
            createdAt: DateTime.now(),
            publish: true),
      );
    }
    // officer faq
    for (int i = 0; i < 10; i++) {
      Faq.db.insertRow(
        session,
        Faq(
            question: 'Question',
            answer:
                'Nam malesuada lectus sed augue elementum malesuada. Aenean ipsum ligula, euismod eu odio et, ullamcorper lobortis turpis.',
            type: FaqType.officer,
            authorId: 1,
            createdAt: DateTime.now(),
            publish: true),
      );
    }

    // manager faq
    for (int i = 0; i < 10; i++) {
      Faq.db.insertRow(
        session,
        Faq(
            question: 'Question',
            answer:
                'Nam malesuada lectus sed augue elementum malesuada. Aenean ipsum ligula, euismod eu odio et, ullamcorper lobortis turpis.',
            type: FaqType.manager,
            authorId: 1,
            createdAt: DateTime.now(),
            publish: true),
      );
    }
  }
}
