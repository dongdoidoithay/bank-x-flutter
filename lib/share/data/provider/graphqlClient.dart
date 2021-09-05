import 'dart:async';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';
import 'package:application/share/data/graphql_operation/queries/index.dart'
    as queries;

import '../local.dart';

class GraphClient {
  late GraphQLClient _client;

  GraphQLClient _Initclient() {
    final HttpLink _httpLink = HttpLink(
      'http://localhost:4000/graphql',
    );
    final AuthLink _authLink = AuthLink(
      getToken: () => 'Bearer $YOUR_PERSONAL_ACCESS_TOKEN',
    );
    final Link _link = _authLink.concat(_httpLink);

    return GraphQLClient(
      cache: GraphQLCache(
        store: HiveStore(),
      ),
      link: _link,
    );
  }

  GraphClient() {
    _client = _Initclient();
  }

  Future<QueryResult> getCustByCifAndPass(String _cif, String _pass) async {
    final WatchQueryOptions _options = WatchQueryOptions(
      document: parseString(queries.loginCifAndPass),
      variables: <String, dynamic>{
        'loginCif': _cif,
        'loginPassword': _pass,
      },
      pollInterval: Duration(seconds: 4),
      fetchResults: true,
    );

    return await _client.query(_options);
  }
}
