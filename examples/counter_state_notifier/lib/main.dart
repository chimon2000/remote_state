import 'package:counter_state_notifier/counter/notifier/counter.dart';
import 'package:counter_state_notifier/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
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
      home: StateNotifierProvider<CounterNotifier, RemoteState<int>>.value(
        value: CounterNotifier(),
        child: HomePage(),
      ),
    );
  }
}
