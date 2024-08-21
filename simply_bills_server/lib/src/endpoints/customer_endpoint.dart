import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

import 'package:simply_bills_server/src/generated/protocol.dart';

class CustomerEndpoint extends Endpoint {
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

  // update to customer scope
  Future<UserInfo?> updateToCustomerScope(Session session) async {
    final auth = await session.authenticated;
    return await Users.updateUserScopes(
        session, auth!.userId, {UserScope.customer});
  }

  // create customer data
  Future<UserData> createCustomerData(Session session) async {
    final auth = await session.authenticated;
    return await UserData.db.insertRow(
      session,
      UserData(
        userInfoId: auth!.userId,
        address: null,
      ),
    );
  }

  // get customer data
  Future<List<UserData>> getCustomerData(Session session) async {
    final auth = await session.authenticated;

    final userData = UserData.db.find(
      session,
      where: (p) => (p.userInfoId.equals(auth!.userId)),
      include: UserData.include(
        userInfo: UserInfo.include(),
        address: UserAddress.includeList(
          include: UserAddress.include(
            address: Address.include(),
          ),
        ),
      ),
    );

    return userData;
  }

  // add customer address
  Future<UserAddress?> addCustomerAddress(
      Session session, String uuid, int userDataId) async {
    // find address from address uuid
    List<Address> address = await Address.db.find(
      session,
      where: (p) => (p.uid.equals(uuid)),
    );

    // found address
    if (address.isNotEmpty) {
      // add address to user data
      try {
        return await UserAddress.db.insertRow(
          session,
          UserAddress(userId: userDataId, addressId: address.first.id!),
        );
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }
}

class UserScope extends Scope {
  const UserScope(String super.name);

  static const customer = UserScope('customer');
  static const manager = UserScope('manager');
  static const officer = UserScope('officer');
}
