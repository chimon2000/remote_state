library remote_state;

import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_state.freezed.dart';

/// A sealed class representing fetched data and the states it can be in.
///
/// If you find yourself continually using enums and classes to represent loaded data,
/// or you have a habit of shuffling errors away to where they can be quietly ignored,
/// consider using [RemoteState].
/// It makes it easier to represent the real state of a remote data fetch and handle it properly.
///
/// See also:
///
/// [How to fix a bad user interface](https://www.scotthurff.com/posts/why-your-user-interface-is-awkward-youre-ignoring-the-ui-stack/)
@freezed
class RemoteState<T> with _$RemoteState<T> {
  RemoteState._();

  /// We haven't asked for the data yet.
  factory RemoteState.initial() = _Initial<T>;

  /// We've asked, but haven't got an answer yet.
  factory RemoteState.loading() = _Loading<T>;

  /// Everything worked, and here's the data.
  factory RemoteState.success(T value) = _Success<T>;

  /// We asked, but something went wrong. Here's the error.
  factory RemoteState.error([Object? error, StackTrace? stackTrace]) =
      _Error<T>;

  /// Defines logic based on the current state.
  ///
  /// [when] takes five methods as parameters that reflect each remote state.
  /// [when] the returned method gets called with a [RemoteState] state, the method
  /// matching the correct state gets called.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) success,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
  });

  /// Defines logic based on the current state with a fallback for unhandled states.
  ///
  /// [maybeWhen] takes five methods as parameters that reflect each remote state
  /// as well as a required [orElse] method.
  ///
  /// [maybeWhen] the returned method gets called with a [RemoteState] state, the method
  /// matching the correct state gets called or [orElse] when there's no match.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  ///
  /// [orElse] determines what to do if no match is found
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  });

  /// Achieves the same result as [when] without destructuring.
  ///
  /// [map] takes five methods as parameters that reflect each remote state.
  /// [map] the returned method gets called with a [RemoteState] state, the method
  /// matching the correct state gets called.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  });

  /// Achieves the same result as [maybeWhen] without destructuring.
  ///
  /// [maybeMap] takes five methods as parameters that reflect each remote state.
  /// [maybeMap] the returned method gets called with a [RemoteState] state, the method
  /// matching the correct state gets called.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  ///
  /// [orElse] determines what to do if no match is found
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  });

  /// State-checking predicate. Returns true if we haven't asked for data yet.
  /// Returns true only if [RemoteState] is [RemoteState.initial]
  late final bool isInitial =
      maybeWhen(initial: () => true, orElse: () => false);

  /// State-checking predicate. Returns true if we're loading.
  /// Returns true only if [RemoteState] is [RemoteState.loading]
  late final bool isLoading =
      maybeWhen(loading: () => true, orElse: () => false);

  /// State-checking predicate. Returns true if we've successfully loaded some data.
  /// Returns true only if [RemoteState] is [RemoteState.success]
  late final bool isSuccess =
      maybeWhen(success: (_) => true, orElse: () => false);

  ///  State-checking predicate. Returns true if we've failed to load some data.
  /// Returns true only if [RemoteState] is [RemoteState.error]
  late final bool isError =
      maybeWhen(error: (_, __) => true, orElse: () => false);

  /// Convert a [Future] to RemoteState.
  /// Emits [RemoteState.success] if the future completes
  /// Emits [RemoteState.error] if future fails.
  static Future<RemoteState<T>> guard<T>(Future<T> Function() future) async {
    try {
      return RemoteState.success(await future());
    } catch (err, stack) {
      return RemoteState.error(err, stack);
    }
  }
}
