import 'package:graphql_flutter/graphql_flutter.dart';

class CounterClient {
  final GraphQLClient client;

  CounterClient(this.client);

  Future<int> getCount() async {
    var options = QueryOptions(
      documentNode: gql(_getCount),
      fetchPolicy: FetchPolicy.networkOnly,
    );
    QueryResult result = await client.query(options);

    return result.data['count'] as int;
  }

  Future<int> increment(int count) async {
    var options = QueryOptions(
      documentNode: gql(_increment),
      fetchPolicy: FetchPolicy.networkOnly,
      variables: {
        'nCount': count,
      },
    );

    QueryResult result = await client.query(options);

    print(result.data);

    return result.data['increment'] as int;
  }

  Future<int> decrement(int count) async {
    var options = QueryOptions(
      documentNode: gql(_decrement),
      fetchPolicy: FetchPolicy.networkOnly,
      variables: {
        'nCount': count,
      },
    );

    QueryResult result = await client.query(options);

    return result.data['decrement'] as int;
  }
}

String _getCount = r'''
      query GetCount {
        count
      }
    ''';

String _increment = r'''
      mutation Increment($nCount: Int) {
        increment(count: $nCount) 
      }
    ''';

String _decrement = r'''
      mutation Decrement($nCount: Int) {
        decrement(count: $nCount) 
      }
    ''';
