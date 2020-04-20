import 'package:counter_state_notifier/counter/notifier/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:remote_state/remote_state.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RemoteState Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          //1. Provided counter notifier
          StateNotifierProvider<CounterNotifier, RemoteState<int>>.value(
            value: CounterNotifier(),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //2. Resolve counter notifier to update state
    var counterNotifier = Provider.of<CounterNotifier>(context);
    var counterState = Provider.of<RemoteState<int>>(context);

    var textStyle = Theme.of(context).textTheme.display4;
    final fabPadding = EdgeInsets.symmetric(vertical: 5.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('RemoteState with StateNotifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            //3. Render state changes
            counterState.when(
              initial: () => Text('Not loaded', style: textStyle),
              empty: () => Text('Never', style: textStyle),
              success: (value) => Text('$value', style: textStyle),
              loading: () => Text('Loading...', style: textStyle),
              error: (_) => Text('Error', style: textStyle),
            ),
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
              //4. Perform increment action
              onPressed: () => counterNotifier.increment(),
            ),
          ),
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'dec',
              child: Icon(Icons.remove),
              //5. Perform decrement action
              onPressed: () => counterNotifier.decrement(),
            ),
          ),
        ],
      ),
    );
  }
}