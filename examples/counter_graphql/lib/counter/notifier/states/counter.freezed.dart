// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _CounterState call({RemoteState<int> count, bool isUpdating}) {
    return _CounterState(
      count: count,
      isUpdating: isUpdating,
    );
  }
}

// ignore: unused_element
const $CounterState = _$CounterStateTearOff();

mixin _$CounterState {
  RemoteState<int> get count;
  bool get isUpdating;

  $CounterStateCopyWith<CounterState> get copyWith;
}

abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({RemoteState<int> count, bool isUpdating});

  $RemoteStateCopyWith<int, $Res> get count;
}

class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object isUpdating = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as RemoteState<int>,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
    ));
  }

  @override
  $RemoteStateCopyWith<int, $Res> get count {
    if (_value.count == null) {
      return null;
    }
    return $RemoteStateCopyWith<int, $Res>(_value.count, (value) {
      return _then(_value.copyWith(count: value));
    });
  }
}

abstract class _$CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(
          _CounterState value, $Res Function(_CounterState) then) =
      __$CounterStateCopyWithImpl<$Res>;
  @override
  $Res call({RemoteState<int> count, bool isUpdating});

  @override
  $RemoteStateCopyWith<int, $Res> get count;
}

class __$CounterStateCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterStateCopyWith<$Res> {
  __$CounterStateCopyWithImpl(
      _CounterState _value, $Res Function(_CounterState) _then)
      : super(_value, (v) => _then(v as _CounterState));

  @override
  _CounterState get _value => super._value as _CounterState;

  @override
  $Res call({
    Object count = freezed,
    Object isUpdating = freezed,
  }) {
    return _then(_CounterState(
      count: count == freezed ? _value.count : count as RemoteState<int>,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
    ));
  }
}

class _$_CounterState implements _CounterState {
  _$_CounterState({this.count, this.isUpdating});

  @override
  final RemoteState<int> count;
  @override
  final bool isUpdating;

  @override
  String toString() {
    return 'CounterState(count: $count, isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(isUpdating);

  @override
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  factory _CounterState({RemoteState<int> count, bool isUpdating}) =
      _$_CounterState;

  @override
  RemoteState<int> get count;
  @override
  bool get isUpdating;
  @override
  _$CounterStateCopyWith<_CounterState> get copyWith;
}
