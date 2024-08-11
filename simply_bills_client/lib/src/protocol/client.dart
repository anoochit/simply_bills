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
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointCustomerEnpoint extends _i1.EndpointRef {
  EndpointCustomerEnpoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'customerEnpoint';

  _i2.Future<_i3.UserInfo?> updateToCustomerScope() =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'customerEnpoint',
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
class EndpointManagerEnpoint extends _i1.EndpointRef {
  EndpointManagerEnpoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'managerEnpoint';

  /// update to manager scope
  _i2.Future<_i3.UserInfo?> updateManagerScope(int userId) =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'managerEnpoint',
        'updateManagerScope',
        {'userId': userId},
      );

  /// update officer scope
  _i2.Future<_i3.UserInfo?> updateOfficerScope(int userId) =>
      caller.callServerEndpoint<_i3.UserInfo?>(
        'managerEnpoint',
        'updateOfficerScope',
        {'userId': userId},
      );
}

/// {@category Endpoint}
class EndpointOfficerEnpoint extends _i1.EndpointRef {
  EndpointOfficerEnpoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'officerEnpoint';
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
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    customerEnpoint = EndpointCustomerEnpoint(this);
    example = EndpointExample(this);
    faq = EndpointFaq(this);
    managerEnpoint = EndpointManagerEnpoint(this);
    officerEnpoint = EndpointOfficerEnpoint(this);
    modules = _Modules(this);
  }

  late final EndpointCustomerEnpoint customerEnpoint;

  late final EndpointExample example;

  late final EndpointFaq faq;

  late final EndpointManagerEnpoint managerEnpoint;

  late final EndpointOfficerEnpoint officerEnpoint;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'customerEnpoint': customerEnpoint,
        'example': example,
        'faq': faq,
        'managerEnpoint': managerEnpoint,
        'officerEnpoint': officerEnpoint,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
