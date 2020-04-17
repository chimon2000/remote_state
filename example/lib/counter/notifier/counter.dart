import 'package:example/counter/clients/counter.dart';
import 'package:flutter/material.dart';
import 'package:remote_state/remote_state.dart';

class CounterNotifier extends ValueNotifier<RemoteState<int>> {
  var _counterClient = CounterClient();

  CounterNotifier() : super(RemoteState.initial()) {
    getCount();
  }

  getCount() async {
    try {
      value = RemoteState.loading();

      var count = await _counterClient.getCount();

      value = RemoteState.success(count);
    } catch (e) {
      value = RemoteState.error(e);
    }
  }

  increment() async {
    try {
      var count = await _counterClient.increment();
      value = RemoteState.success(count);
    } catch (e) {
      value = RemoteState.error(e);
    }
  }

  decrement() async {
    try {
      var count = await _counterClient.decrement();
      value = RemoteState.success(count);
    } catch (e) {
      value = RemoteState.error(e);
    }
  }
}
