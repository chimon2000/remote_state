import 'package:bloc/bloc.dart';
import 'package:counter_bloc/counter/counter_client.dart';
import 'package:remote_state/remote_state.dart';

class CounterBloc extends Bloc<CounterEvent, RemoteState<int>> {
  var _counterClient = CounterClient();

  CounterBloc() : super(RemoteState.initial());

  @override
  Stream<RemoteState<int>> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.load:
        yield await onLoad();
        break;
      case CounterEvent.decrement:
        yield await onDecrement();
        break;
      case CounterEvent.increment:
        yield await onIncrement();
        break;
    }
  }

  Future<RemoteState<int>> onLoad() async {
    RemoteState<int> state = RemoteState.loading();

    state = await RemoteState.guard(() => _counterClient.getCount());

    return state;
  }

  Future<RemoteState<int>> onIncrement() async {
    RemoteState<int> state =
        await RemoteState.guard(() => _counterClient.increment());

    return state;
  }

  Future<RemoteState<int>> onDecrement() async {
    RemoteState<int> state =
        await RemoteState.guard(() => _counterClient.decrement());

    return state;
  }

  void increment() => this.add(CounterEvent.increment);
  void decrement() => this.add(CounterEvent.decrement);
  void load() => this.add(CounterEvent.load);
}

enum CounterEvent { increment, decrement, load }
