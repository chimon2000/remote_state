import 'package:example/counter/notifier/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:remote_state/remote_state.dart';

class CounterNotifierPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (_) {
          return MultiProvider(
            providers: [
              StateNotifierProvider<CounterNotifier, RemoteState<int>>.value(
                  value: CounterNotifier()),
            ],
            child: CounterNotifierPage(),
          );
        },
      );

  const CounterNotifierPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterNotifier = Provider.of<CounterNotifier>(context);
    var counterState = Provider.of<RemoteState<int>>(context);

    var count =
        counterState.maybeWhen(success: (value) => value, orElse: () => 0);
    var textStyle = Theme.of(context).textTheme.display4;
    final fabPadding = EdgeInsets.symmetric(vertical: 5.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('RemoteState with ValueNotifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('$count', style: textStyle),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'inc',
              child: Icon(Icons.add),
              onPressed: () => counterNotifier.increment(),
            ),
          ),
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'dec',
              child: Icon(Icons.remove),
              onPressed: () => counterNotifier.decrement(),
            ),
          ),
        ],
      ),
    );
  }
}
