import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_state/remote_state.dart';

part 'counter.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  /// Currently won't generate correctly due to https://github.com/rrousselGit/freezed/issues/128
  factory CounterState({RemoteState<int> count, bool isUpdating}) =
      _CounterState;
}
