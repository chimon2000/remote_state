import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_notifier/state_notifier.dart';

/// Subscribes to a [StateNotifier] and mark the widget as needing build
/// whenever the listener is called.
///
/// See also:
///   * [StateNotifier]
T useStateNotifier<T>(StateNotifier<T> notifier) {
  return Hook.use(_StateNotifierHook(notifier));
}

class _StateNotifierHook<T> extends Hook<T> {
  final StateNotifier notifier;

  const _StateNotifierHook(this.notifier) : assert(notifier != null);

  @override
  _StateNotifierStateHook<T> createState() => _StateNotifierStateHook<T>();
}

class _StateNotifierStateHook<T> extends HookState<T, _StateNotifierHook<T>> {
  T state;

  void Function() removeListener;

  @override
  void initHook() {
    super.initHook();
    removeListener = hook.notifier.addListener(_listener);
  }

  @override
  void didUpdateHook(_StateNotifierHook oldHook) {
    super.didUpdateHook(oldHook);
    if (hook.notifier != oldHook.notifier) {
      removeListener();
      hook.notifier.addListener(_listener);
    }
  }

  @override
  T build(BuildContext context) {
    return state;
  }

  void _listener(T state) {
    setState(() {
      this.state = state;
    });
  }

  @override
  void dispose() {
    removeListener();
  }
}
