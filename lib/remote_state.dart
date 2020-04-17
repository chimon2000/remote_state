library remote_state;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_state.freezed.dart';

@freezed
abstract class RemoteState<T> with _$RemoteState<T> {
  const factory RemoteState.initial() = Initial<T>;
  const factory RemoteState.success(T value) = Success<T>;
  const factory RemoteState.loading() = Loading<T>;
  const factory RemoteState.empty() = Empty<T>;
  const factory RemoteState.error([String message]) = Error<T>;
}
