library remote_state;

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
abstract class RemoteState<T> with _$RemoteState<T> {
  /// We haven't asked for the data yet.
  const factory RemoteState.initial() = _Initial<T>;

  /// We've asked, but haven't got an answer yet.
  const factory RemoteState.loading() = _Loading<T>;

  /// Everything worked, and here's the data.
  const factory RemoteState.success(T value) = _Success<T>;

  /// Everything worked, and there's no data.
  const factory RemoteState.empty() = _Empty<T>;

  /// We asked, but something went wrong. Here's the error.
  const factory RemoteState.error([String message]) = _Error<T>;

  /// Defines logic based on the current state.
  ///
  /// [when] takes five methods as parameters that reflect each remote state.
  /// [when] the returned method gets called with a [RemoteData] state, the method
  /// matching the correct state gets called.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [empty] determines what to do if the state matches [RemoteState.empty]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  });

  /// Defines logic based on the current state with a fallback for unhandled states.
  ///
  /// [maybeWhen] takes five methods as parameters that reflect each remote state
  /// as well as a required [orElse] method.
  ///
  /// [maybeWhen] the returned method gets called with a [RemoteData] state, the method
  /// matching the correct state gets called or [orElse] when there's no match.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [empty] determines what to do if the state matches [RemoteState.empty]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  ///
  /// [orElse] determines what to do if no match is found
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  });

  /// Achieves the same result as [when] without destructuring.
  ///
  /// [map] takes five methods as parameters that reflect each remote state.
  /// [map] the returned method gets called with a [RemoteData] state, the method
  /// matching the correct state gets called.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [empty] determines what to do if the state matches [RemoteState.empty]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  Result map<Result extends Object>({
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  });

  /// Achieves the same result as [maybeWhen] without destructuring.
  ///
  /// [maybeMap] takes five methods as parameters that reflect each remote state.
  /// [maybeMap] the returned method gets called with a [RemoteData] state, the method
  /// matching the correct state gets called.
  ///
  /// [initial] determines what to do if the state matches [RemoteState.initial]
  ///
  /// [loading] determines what to do if the state matches [RemoteState.loading]
  ///
  /// [success] determines what to do if the state matches [RemoteState.success]
  ///
  /// [empty] determines what to do if the state matches [RemoteState.empty]
  ///
  /// [error] determines what to do if the state matches [RemoteState.error]
  ///
  /// [orElse] determines what to do if no match is found
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  });
}
