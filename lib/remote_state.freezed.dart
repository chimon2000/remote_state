// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of remote_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RemoteStateTearOff {
  const _$RemoteStateTearOff();

  Initial<T> initial<T>() {
    return Initial<T>();
  }

  Success<T> success<T>(T value) {
    return Success<T>(
      value,
    );
  }

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  Empty<T> empty<T>() {
    return Empty<T>();
  }

  Error<T> error<T>([String message]) {
    return Error<T>(
      message,
    );
  }
}

// ignore: unused_element
const $RemoteState = _$RemoteStateTearOff();

mixin _$RemoteState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(T value),
    @required Result loading(),
    @required Result empty(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(T value),
    Result loading(),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial<T> value),
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result empty(Empty<T> value),
    @required Result error(Error<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial<T> value),
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result empty(Empty<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  });
}

abstract class $RemoteStateCopyWith<T, $Res> {
  factory $RemoteStateCopyWith(
          RemoteState<T> value, $Res Function(RemoteState<T>) then) =
      _$RemoteStateCopyWithImpl<T, $Res>;
}

class _$RemoteStateCopyWithImpl<T, $Res>
    implements $RemoteStateCopyWith<T, $Res> {
  _$RemoteStateCopyWithImpl(this._value, this._then);

  final RemoteState<T> _value;
  // ignore: unused_field
  final $Res Function(RemoteState<T>) _then;
}

abstract class $InitialCopyWith<T, $Res> {
  factory $InitialCopyWith(Initial<T> value, $Res Function(Initial<T>) then) =
      _$InitialCopyWithImpl<T, $Res>;
}

class _$InitialCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements $InitialCopyWith<T, $Res> {
  _$InitialCopyWithImpl(Initial<T> _value, $Res Function(Initial<T>) _then)
      : super(_value, (v) => _then(v as Initial<T>));

  @override
  Initial<T> get _value => super._value as Initial<T>;
}

class _$Initial<T> implements Initial<T> {
  const _$Initial();

  @override
  String toString() {
    return 'RemoteState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(T value),
    @required Result loading(),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(T value),
    Result loading(),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial<T> value),
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result empty(Empty<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial<T> value),
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result empty(Empty<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements RemoteState<T> {
  const factory Initial() = _$Initial<T>;
}

abstract class $SuccessCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) then) =
      _$SuccessCopyWithImpl<T, $Res>;
  $Res call({T value});
}

class _$SuccessCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(Success<T> _value, $Res Function(Success<T>) _then)
      : super(_value, (v) => _then(v as Success<T>));

  @override
  Success<T> get _value => super._value as Success<T>;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Success<T>(
      value == freezed ? _value.value : value as T,
    ));
  }
}

class _$Success<T> implements Success<T> {
  const _$Success(this.value) : assert(value != null);

  @override
  final T value;

  @override
  String toString() {
    return 'RemoteState<$T>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(T value),
    @required Result loading(),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return success(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(T value),
    Result loading(),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial<T> value),
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result empty(Empty<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial<T> value),
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result empty(Empty<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements RemoteState<T> {
  const factory Success(T value) = _$Success<T>;

  T get value;
  $SuccessCopyWith<T, Success<T>> get copyWith;
}

abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

class _$LoadingCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'RemoteState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(T value),
    @required Result loading(),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(T value),
    Result loading(),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial<T> value),
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result empty(Empty<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial<T> value),
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result empty(Empty<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements RemoteState<T> {
  const factory Loading() = _$Loading<T>;
}

abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
}

class _$EmptyCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;
}

class _$Empty<T> implements Empty<T> {
  const _$Empty();

  @override
  String toString() {
    return 'RemoteState<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(T value),
    @required Result loading(),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(T value),
    Result loading(),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial<T> value),
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result empty(Empty<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial<T> value),
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result empty(Empty<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements RemoteState<T> {
  const factory Empty() = _$Empty<T>;
}

abstract class $ErrorCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) then) =
      _$ErrorCopyWithImpl<T, $Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(Error<T> _value, $Res Function(Error<T>) _then)
      : super(_value, (v) => _then(v as Error<T>));

  @override
  Error<T> get _value => super._value as Error<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error<T>(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error<T> implements Error<T> {
  const _$Error([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'RemoteState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(T value),
    @required Result loading(),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(T value),
    Result loading(),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial<T> value),
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result empty(Empty<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(empty != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial<T> value),
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result empty(Empty<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements RemoteState<T> {
  const factory Error([String message]) = _$Error<T>;

  String get message;
  $ErrorCopyWith<T, Error<T>> get copyWith;
}
