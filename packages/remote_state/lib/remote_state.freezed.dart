// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of remote_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RemoteStateTearOff {
  const _$RemoteStateTearOff();

  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _Success<T> success<T>(T value) {
    return _Success<T>(
      value,
    );
  }

  _Empty<T> empty<T>() {
    return _Empty<T>();
  }

  _Error<T> error<T>([String message]) {
    return _Error<T>(
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
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
    Result empty(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
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

abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

class __$InitialCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'RemoteState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
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
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RemoteState<T> {
  const factory _Initial() = _$_Initial<T>;
}

abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

class __$LoadingCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'RemoteState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
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
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements RemoteState<T> {
  const factory _Loading() = _$_Loading<T>;
}

abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({T value});
}

class __$SuccessCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_Success<T>(
      value == freezed ? _value.value : value as T,
    ));
  }
}

class _$_Success<T> implements _Success<T> {
  const _$_Success(this.value) : assert(value != null);

  @override
  final T value;

  @override
  String toString() {
    return 'RemoteState<$T>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return success(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
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
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements RemoteState<T> {
  const factory _Success(T value) = _$_Success<T>;

  T get value;
  _$SuccessCopyWith<T, _Success<T>> get copyWith;
}

abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
}

class __$EmptyCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;
}

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty();

  @override
  String toString() {
    return 'RemoteState<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
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
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements RemoteState<T> {
  const factory _Empty() = _$_Empty<T>;
}

abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({String message});
}

class __$ErrorCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Error<T>(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_Error<T> implements _Error<T> {
  const _$_Error([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'RemoteState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(T value),
    @required Result empty(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(T value),
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
    @required Result initial(_Initial<T> value),
    @required Result loading(_Loading<T> value),
    @required Result success(_Success<T> value),
    @required Result empty(_Empty<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial<T> value),
    Result loading(_Loading<T> value),
    Result success(_Success<T> value),
    Result empty(_Empty<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements RemoteState<T> {
  const factory _Error([String message]) = _$_Error<T>;

  String get message;
  _$ErrorCopyWith<T, _Error<T>> get copyWith;
}
