/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i3;
import 'package:simply_bills_client/src/protocol/faq.dart' as _i4;
import 'package:simply_bills_client/src/protocol/address.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointCustomer extends _i1.EndpointRef {
  EndpointCustomer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'customer';

  _i2.Future<_i3.UserInfo?> updateToCustomerScope() =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'customer',
        'updateToCustomerScope',
        {},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointFaq extends _i1.EndpointRef {
  EndpointFaq(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'faq';

  /// get customer faq
  _i2.Future<List<_i4.Faq>> getCustomerFAQ() =>
      caller.callServerEndpoint<List<_i4.Faq>>(
        'faq',
        'getCustomerFAQ',
        {},
      );

  /// get manager faq
  _i2.Future<List<_i4.Faq>> getManagerFAQ() =>
      caller.callServerEndpoint<List<_i4.Faq>>(
        'faq',
        'getManagerFAQ',
        {},
      );

  /// get officer faq
  _i2.Future<List<_i4.Faq>> getOfficerFAQ() =>
      caller.callServerEndpoint<List<_i4.Faq>>(
        'faq',
        'getOfficerFAQ',
        {},
      );

  /// get all faq
  _i2.Future<List<_i4.Faq>> getFAQ() =>
      caller.callServerEndpoint<List<_i4.Faq>>(
        'faq',
        'getFAQ',
        {},
      );
}

/// {@category Endpoint}
class EndpointManager extends _i1.EndpointRef {
  EndpointManager(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'manager';

  /// update to manager scope
  _i2.Future<_i3.UserInfo?> updateManagerScope(int userId) =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'manager',
        'updateManagerScope',
        {'userId': userId},
      );

  /// update officer scope
  _i2.Future<_i3.UserInfo?> updateOfficerScope(int userId) =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'manager',
        'updateOfficerScope',
        {'userId': userId},
      );

  /// update user scope
  _i2.Future<_i3.UserInfo?> updateUserScope(int userId) =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'manager',
        'updateUserScope',
        {'userId': userId},
      );

  /// get users
  _i2.Future<List<_i3.UserInfo>> getUsers() =>
      caller.callServerEndpoint<List<_i3.UserInfo>>(
        'manager',
        'getUsers',
        {},
      );

  /// get users
  _i2.Future<List<_i5.Address>> getAddress() =>
      caller.callServerEndpoint<List<_i5.Address>>(
        'manager',
        'getAddress',
        {},
      );

  /// add new user
  _i2.Future<_i3.UserInfo?> createUserWithScope(
    String userName,
    String email,
    String password,
    String userScope,
  ) =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'manager',
        'createUserWithScope',
        {
          'userName': userName,
          'email': email,
          'password': password,
          'userScope': userScope,
        },
      );
}

/// {@category Endpoint}
class EndpointOfficer extends _i1.EndpointRef {
  EndpointOfficer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'officer';
}

class _Modules {
  _Modules(Client client) {
    auth = _i3.Caller(client);
  }

  late final _i3.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    customer = EndpointCustomer(this);
    example = EndpointExample(this);
    faq = EndpointFaq(this);
    manager = EndpointManager(this);
    officer = EndpointOfficer(this);
    modules = _Modules(this);
  }

  late final EndpointCustomer customer;

  late final EndpointExample example;

  late final EndpointFaq faq;

  late final EndpointManager manager;

  late final EndpointOfficer officer;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'customer': customer,
        'example': example,
        'faq': faq,
        'manager': manager,
        'officer': officer,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
