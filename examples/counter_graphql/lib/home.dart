import 'package:counter_graphql/counter/notifier/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remote_state/remote_state.dart';

import 'counter/notifier/states/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CounterNotifier _counterNotifier;

  @override
  void initState() {
    _counterNotifier = Provider.of<CounterNotifier>(context, listen: false);

    Future.microtask(() {
      _counterNotifier.getCount();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //2. Resolve counter notifier to update state

    var counterState = Provider.of<CounterState>(context);

    var textStyle = Theme.of(context).textTheme.display1;
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
            counterState.count.when(
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
              onPressed: counterState.isUpdating
                  ? null
                  : () => _counterNotifier.increment(),
            ),
          ),
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'dec',
              child: Icon(Icons.remove),
              //5. Perform decrement action
              onPressed: counterState.isUpdating
                  ? null
                  : () => _counterNotifier.decrement(),
            ),
          ),
        ],
      ),
    );
  }
}
