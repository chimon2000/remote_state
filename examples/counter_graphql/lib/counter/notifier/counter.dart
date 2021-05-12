import 'package:remote_state/remote_state.dart';
import 'package:state_notifier/state_notifier.dart';

import '../clients/counter.dart';
import 'states/counter.dart';

class CounterNotifier extends StateNotifier<CounterState> with LocatorMixin {
  CounterClient get _counterClient => read<CounterClient>();

  CounterNotifier()
      : super(
            CounterState(count: RemoteState<int>.initial(), isUpdating: false));

  getCount() async {
    try {
      state = state.copyWith(count: RemoteState.loading());

      var count = await _counterClient.getCount();

      state = state.copyWith(count: RemoteState.success(count));
    } catch (e) {
      state = state.copyWith(count: RemoteState.error(e));
    }
  }

  increment() async {
    var count =
        state.count.maybeWhen(success: (state) => state, orElse: () => 0);

    state = state.copyWith(isUpdating: true);

    try {
      var result = await _counterClient.increment(count);

      state =
          state.copyWith(count: RemoteState.success(result), isUpdating: false);
    } catch (e) {
      state = state.copyWith(count: RemoteState.error(e), isUpdating: false);
    }
  }

  decrement() async {
    var count =
        state.count.maybeWhen(success: (state) => state, orElse: () => 0);

    state = state.copyWith(isUpdating: true);

    try {
      var result = await _counterClient.decrement(count);

      state =
          state.copyWith(count: RemoteState.success(result), isUpdating: false);
    } catch (e) {
      state = state.copyWith(count: RemoteState.error(e), isUpdating: false);
    }
  }
}
