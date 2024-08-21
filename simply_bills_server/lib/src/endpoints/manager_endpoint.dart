import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

import 'package:simply_bills_server/src/endpoints/customer_endpoint.dart';

import '../generated/address.dart';
import '../generated/invoice.dart';

class ManagerEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.

  // Future<String> hello(Session session, String name) async {
  //   return 'Hello $name';
  // }

  @override
  bool get requireLogin => true;

  @override
  Set<Scope> get requiredScopes => {UserScope.manager};

  /// update to manager scope
  Future<UserInfo?> updateManagerScope(Session session, int userId) async {
    return await Users.updateUserScopes(session, userId, {UserScope.manager});
  }

  /// update officer scope
  Future<UserInfo?> updateOfficerScope(Session session, int userId) async {
    return await Users.updateUserScopes(session, userId, {UserScope.officer});
  }

  /// update user scope
  Future<UserInfo?> updateUserScope(Session session, int userId) async {
    return await Users.updateUserScopes(session, userId, {UserScope.customer});
  }

  /// get users
  Future<List<UserInfo>> getUsers(Session session) async {
    return await UserInfo.db.find(
      session,
      orderBy: (p) => (p.created),
      orderDescending: true,
    );
  }

  /// get users
  Future<List<Address>> getAddress(Session session) async {
    return await Address.db.find(session);
  }

  /// get invoices
  Future<List<Invoice>> getInvoice(Session session) async {
    return await Invoice.db.find(
      session,
      orderBy: (p) => (p.createdAt),
      orderDescending: true,
    );
  }

  /// add new user with scope
  Future<UserInfo?> createUserWithScope(Session session, String userName,
      String email, String password, String userScope) async {
    final user = await Emails.createUser(session, userName, email, password);
    if (user != null) {
      switch (userScope) {
        case 'manager':
          await Users.updateUserScopes(session, user.id!, {UserScope.manager});
        case 'officer':
          await Users.updateUserScopes(session, user.id!, {UserScope.officer});
        case 'customer':
          await Users.updateUserScopes(session, user.id!, {UserScope.customer});
      }
      return user;
    } else {
      return null;
    }
  }
}
