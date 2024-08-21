import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

import 'package:simply_bills_server/src/generated/faq_type.dart';

import '../generated/faq.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class FaqEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.

  @override
  bool get requireLogin => true;

  /// get customer faq
  Future<List<Faq>> getCustomerFAQ(Session session) async {
    final faq = Faq.db.find(
      session,
      where: (p) => (p.type.equals(FaqType.customer)),
      include: Faq.include(
        author: UserInfo.include(),
      ),
    );

    return faq;
  }

  /// get manager faq
  Future<List<Faq>> getManagerFAQ(Session session) async {
    final faq = Faq.db.find(
      session,
      where: (p) => (p.type.equals(FaqType.manager)),
      include: Faq.include(
        author: UserInfo.include(),
      ),
    );

    return faq;
  }

  /// get officer faq
  Future<List<Faq>> getOfficerFAQ(Session session) async {
    final faq = Faq.db.find(
      session,
      where: (p) => (p.type.equals(FaqType.officer)),
      include: Faq.include(
        author: UserInfo.include(),
      ),
    );

    return faq;
  }

  /// get all faq
  Future<List<Faq>> getFAQ(Session session) async {
    final faq = Faq.db.find(
      session,
      include: Faq.include(
        author: UserInfo.include(),
      ),
    );

    return faq;
  }
}
