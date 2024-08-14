/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/customer_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/faq_endpoint.dart' as _i4;
import '../endpoints/manager_endpoint.dart' as _i5;
import '../endpoints/officer_endpoint.dart' as _i6;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'customerEnpoint': _i2.CustomerEnpoint()
        ..initialize(
          server,
          'customerEnpoint',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'faq': _i4.FaqEndpoint()
        ..initialize(
          server,
          'faq',
          null,
        ),
      'managerEnpoint': _i5.ManagerEnpoint()
        ..initialize(
          server,
          'managerEnpoint',
          null,
        ),
      'officerEnpoint': _i6.OfficerEnpoint()
        ..initialize(
          server,
          'officerEnpoint',
          null,
        ),
    };
    connectors['customerEnpoint'] = _i1.EndpointConnector(
      name: 'customerEnpoint',
      endpoint: endpoints['customerEnpoint']!,
      methodConnectors: {
        'updateToCustomerScope': _i1.MethodConnector(
          name: 'updateToCustomerScope',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['customerEnpoint'] as _i2.CustomerEnpoint)
                  .updateToCustomerScope(session),
        )
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['faq'] = _i1.EndpointConnector(
      name: 'faq',
      endpoint: endpoints['faq']!,
      methodConnectors: {
        'getCustomerFAQ': _i1.MethodConnector(
          name: 'getCustomerFAQ',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['faq'] as _i4.FaqEndpoint).getCustomerFAQ(session),
        ),
        'getManagerFAQ': _i1.MethodConnector(
          name: 'getManagerFAQ',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['faq'] as _i4.FaqEndpoint).getManagerFAQ(session),
        ),
        'getOfficerFAQ': _i1.MethodConnector(
          name: 'getOfficerFAQ',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['faq'] as _i4.FaqEndpoint).getOfficerFAQ(session),
        ),
        'getFAQ': _i1.MethodConnector(
          name: 'getFAQ',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['faq'] as _i4.FaqEndpoint).getFAQ(session),
        ),
      },
    );
    connectors['managerEnpoint'] = _i1.EndpointConnector(
      name: 'managerEnpoint',
      endpoint: endpoints['managerEnpoint']!,
      methodConnectors: {
        'updateManagerScope': _i1.MethodConnector(
          name: 'updateManagerScope',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['managerEnpoint'] as _i5.ManagerEnpoint)
                  .updateManagerScope(
            session,
            params['userId'],
          ),
        ),
        'updateOfficerScope': _i1.MethodConnector(
          name: 'updateOfficerScope',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['managerEnpoint'] as _i5.ManagerEnpoint)
                  .updateOfficerScope(
            session,
            params['userId'],
          ),
        ),
        'updateUserScope': _i1.MethodConnector(
          name: 'updateUserScope',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['managerEnpoint'] as _i5.ManagerEnpoint)
                  .updateUserScope(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['officerEnpoint'] = _i1.EndpointConnector(
      name: 'officerEnpoint',
      endpoint: endpoints['officerEnpoint']!,
      methodConnectors: {},
    );
    modules['serverpod_auth'] = _i7.Endpoints()..initializeEndpoints(server);
  }
}
