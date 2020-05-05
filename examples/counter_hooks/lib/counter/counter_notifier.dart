import 'package:remote_state/remote_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:counter_hooks/counter/counter_client.dart';

class CounterNotifier extends StateNotifier<RemoteState<int>> {
  var _counterClient = CounterClient();

  CounterNotifier() : super(RemoteState.initial()) {
    getCount();
  }

  getCount() async {
    try {
      state = RemoteState.loading();

      var count = await _counterClient.getCount();

      state = RemoteState.success(count);
    } catch (e) {
      state = RemoteState.error(e);
    }
  }

  increment() async {
    try {
      var count = await _counterClient.increment();
      state = RemoteState.success(count);
    } catch (e) {
      state = RemoteState.error(e);
    }
  }

  decrement() async {
    try {
      var count = await _counterClient.decrement();
      state = RemoteState.success(count);
    } catch (e) {
      state = RemoteState.error(e);
    }
  }
}
