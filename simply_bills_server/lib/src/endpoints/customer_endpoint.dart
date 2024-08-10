import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class CustomerEnpoint extends Endpoint {
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

  Future<UserInfo?> updateToCustomerScope(Session session) async {
    final auth = await session.authenticated;
    return await Users.updateUserScopes(
        session, auth!.userId, {UserScope.customer});
  }
}

class UserScope extends Scope {
  const UserScope(String super.name);

  static const customer = UserScope('bills.customer');
  static const manager = UserScope('bills.manager');
  static const officer = UserScope('bills.officer');
}
