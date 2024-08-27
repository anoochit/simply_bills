import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart' as mo;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

import '/src/endpoints/customer_endpoint.dart' as ce;
import 'src/future_calls/monly_wast_invoice.dart';
import 'src/generated/endpoints.dart';
import 'src/generated/protocol.dart';
import 'src/web/routes/root.dart';

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
  pod.registerFutureCall(MonthlyWastInvoice(), 'monthlyWastInvoice');

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

  // run future call
  await initFutureCall(pod);

  // add sample data
  await initData(pod);

  // Start the server.
  await pod.start();
}

// init future call
initFutureCall(Serverpod pod) async {
  // monthly wast invoice
  final session = await pod.createSession();
  DateTime nextDate = DateTime.now().day > 25
      ? DateTime(DateTime.now().year, DateTime.now().month + 1, 25, 0, 0)
      : DateTime(DateTime.now().year, DateTime.now().month, 25, 0, 0);

  await session.serverpod
      .futureCallAtTime('monthlyWastInvoice', null, nextDate);
}

/// add sample data
Future<void> initData(Serverpod pod) async {
  final session = await pod.createSession();

  int managerId = 1;

  // if no product add sample data
  final productTotal = await Product.db.count(session);
  if (productTotal == 0) {
    await Product.db.insertRow(
      session,
      Product(title: 'Wast', description: 'Wast service', unitPrice: 40.0),
    );
  }

  // if no user add sample data
  final userTotal = await mo.UserInfo.db.count(session);
  if (userTotal == 0) {
    // add sample manager
    await mo.Emails.createUser(
            session, 'manager', 'manager@example.com', 'Hello123!')
        .then((c) {
      managerId = c!.id!;
      auth.Users.updateUserScopes(session, c.id!, {ce.UserScope.manager});
    });

    // add sample officer
    await mo.Emails.createUser(
            session, 'officer', 'officer@example.com', 'Hello123!')
        .then((c) {
      auth.Users.updateUserScopes(session, c!.id!, {ce.UserScope.officer});
    });

    // add sample customer
    await mo.Emails.createUser(
            session, 'customer', 'customer@example.com', 'Hello123!')
        .then((c) {
      auth.Users.updateUserScopes(session, c!.id!, {ce.UserScope.customer});
      UserData.db.insertRow(
        session,
        UserData(userInfoId: c.id!, address: null),
      );
    });
  }

  // if no address add sample data
  final addressTotal = await Address.db.count(session);

  if (addressTotal == 0) {
    for (int i = 0; i < 10; i++) {
      final uuid = Uuid().v4();
      session.log(uuid);
      await Address.db.insertRow(
        session,
        Address(
            uid: uuid,
            address: '${100 + i} Moo 10, Suranaree',
            address2: 'Muang, Nakhon Ratchasima 30000'),
      );
    }
  }

  // add user to address
  final userAddressTotal = await UserAddress.db.count(session);
  if (userAddressTotal == 0) {
    await UserAddress.db.insert(
      session,
      [
        UserAddress(userId: 1, addressId: 1),
        UserAddress(userId: 1, addressId: 2),
      ],
    );
  }

  // if no faq add sample data
  final faqTotal = await Faq.db.count(session);

  final question = 'Question';
  final answer =
      'Nam malesuada lectus sed augue elementum malesuada. Aenean ipsum ligula, euismod eu odio et, ullamcorper lobortis turpis.';

  if (faqTotal == 0) {
    // customer faq
    for (int i = 0; i < 10; i++) {
      Faq.db.insertRow(
        session,
        Faq(
            question: question,
            answer: answer,
            type: FaqType.customer,
            authorId: managerId,
            createdAt: DateTime.now(),
            publish: true),
      );
    }
    // officer faq
    for (int i = 0; i < 10; i++) {
      Faq.db.insertRow(
        session,
        Faq(
            question: question,
            answer: answer,
            type: FaqType.officer,
            authorId: managerId,
            createdAt: DateTime.now(),
            publish: true),
      );
    }

    // manager faq
    for (int i = 0; i < 10; i++) {
      Faq.db.insertRow(
        session,
        Faq(
            question: question,
            answer: answer,
            type: FaqType.manager,
            authorId: managerId,
            createdAt: DateTime.now(),
            publish: true),
      );
    }
  }

  // if no invoice add invoice sample
  final invoiceTotal = await Invoice.db.count(session);

  if (invoiceTotal == 0) {
    // create invoice
    final invoice = await Invoice.db.insertRow(
      session,
      Invoice(
        referenceNo: Uuid().v4(),
        addressId: 1,
        total: 40,
        createdAt: DateTime.now(),
        createdById: 1,
        status: InvoiceStatus.unpaid,
      ),
    );

    // create invoice item
    final item = await InvoiceItem.db.insertRow(
      session,
      InvoiceItem(
        productId: 1,
        quantity: 1,
        unitPrice: 40.0,
        total: 40.0,
        invoiceId: invoice.id!,
      ),
    );

    // attch invoice item
    Invoice.db.attachRow.items(session, invoice, item);

    // list invoice
    Invoice.db
        .find(
          session,
          include: Invoice.include(
            address: Address.include(),
            createdBy: UserData.include(
              userInfo: auth.UserInfo.include(),
            ),
            items: InvoiceItem.includeList(
              include: InvoiceItem.include(
                product: Product.include(),
              ),
            ),
          ),
        )
        .then((v) => session.log(v.toString()));
  }
}
