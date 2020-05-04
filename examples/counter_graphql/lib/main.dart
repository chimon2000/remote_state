import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:remote_state/remote_state.dart';
import 'counter/clients/counter.dart';
import 'counter/notifier/counter.dart';
import 'counter/notifier/states/counter.dart';
import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpLink link = HttpLink(
    uri: 'https://zd9wn.sse.codesandbox.io/graphql',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: InMemoryCache(),
      link: link,
    ),
  );
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MyApp({Key key, this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CounterClient>(create: (_) => CounterClient(client.value)),
        StateNotifierProvider<CounterNotifier, CounterState>(
          create: (_) => CounterNotifier(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
