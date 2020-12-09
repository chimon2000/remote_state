// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of remote_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RemoteStateTearOff {
  const _$RemoteStateTearOff();

// ignore: unused_element
  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

// ignore: unused_element
  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

// ignore: unused_element
  _Success<T> success<T>(T value) {
    return _Success<T>(
      value,
    );
  }

// ignore: unused_element
  _Error<T> error<T>([dynamic error, StackTrace stackTrace]) {
    return _Error<T>(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RemoteState = _$RemoteStateTearOff();

/// @nodoc
mixin _$RemoteState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T value),
    @required TResult error(dynamic error, StackTrace stackTrace),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(T value),
    TResult error(dynamic error, StackTrace stackTrace),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RemoteStateCopyWith<T, $Res> {
  factory $RemoteStateCopyWith(
          RemoteState<T> value, $Res Function(RemoteState<T>) then) =
      _$RemoteStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RemoteStateCopyWithImpl<T, $Res>
    implements $RemoteStateCopyWith<T, $Res> {
  _$RemoteStateCopyWithImpl(this._value, this._then);

  final RemoteState<T> _value;
  // ignore: unused_field
  final $Res Function(RemoteState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc
class _$_Initial<T> implements _Initial<T> {
  _$_Initial();

  bool _didisInitial = false;
  bool _isInitial;

  @override
  bool get isInitial {
    if (_didisInitial == false) {
      _didisInitial = true;
      _isInitial = maybeWhen(initial: () => true, orElse: () => false);
    }
    return _isInitial;
  }

  bool _didisLoading = false;
  bool _isLoading;

  @override
  bool get isLoading {
    if (_didisLoading == false) {
      _didisLoading = true;
      _isLoading = maybeWhen(loading: () => true, orElse: () => false);
    }
    return _isLoading;
  }

  bool _didisSuccess = false;
  bool _isSuccess;

  @override
  bool get isSuccess {
    if (_didisSuccess == false) {
      _didisSuccess = true;
      _isSuccess = maybeWhen(success: (_) => true, orElse: () => false);
    }
    return _isSuccess;
  }

  bool _didisError = false;
  bool _isError;

  @override
  bool get isError {
    if (_didisError == false) {
      _didisError = true;
      _isError = maybeWhen(error: (_, __) => true, orElse: () => false);
    }
    return _isError;
  }

  @override
  String toString() {
    return 'RemoteState<$T>.initial(isInitial: $isInitial, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T value),
    @required TResult error(dynamic error, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(T value),
    TResult error(dynamic error, StackTrace stackTrace),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RemoteState<T> {
  factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc
class _$_Loading<T> implements _Loading<T> {
  _$_Loading();

  bool _didisInitial = false;
  bool _isInitial;

  @override
  bool get isInitial {
    if (_didisInitial == false) {
      _didisInitial = true;
      _isInitial = maybeWhen(initial: () => true, orElse: () => false);
    }
    return _isInitial;
  }

  bool _didisLoading = false;
  bool _isLoading;

  @override
  bool get isLoading {
    if (_didisLoading == false) {
      _didisLoading = true;
      _isLoading = maybeWhen(loading: () => true, orElse: () => false);
    }
    return _isLoading;
  }

  bool _didisSuccess = false;
  bool _isSuccess;

  @override
  bool get isSuccess {
    if (_didisSuccess == false) {
      _didisSuccess = true;
      _isSuccess = maybeWhen(success: (_) => true, orElse: () => false);
    }
    return _isSuccess;
  }

  bool _didisError = false;
  bool _isError;

  @override
  bool get isError {
    if (_didisError == false) {
      _didisError = true;
      _isError = maybeWhen(error: (_, __) => true, orElse: () => false);
    }
    return _isError;
  }

  @override
  String toString() {
    return 'RemoteState<$T>.loading(isInitial: $isInitial, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T value),
    @required TResult error(dynamic error, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(T value),
    TResult error(dynamic error, StackTrace stackTrace),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements RemoteState<T> {
  factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
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

/// @nodoc
class _$_Success<T> implements _Success<T> {
  _$_Success(this.value) : assert(value != null);

  @override
  final T value;

  bool _didisInitial = false;
  bool _isInitial;

  @override
  bool get isInitial {
    if (_didisInitial == false) {
      _didisInitial = true;
      _isInitial = maybeWhen(initial: () => true, orElse: () => false);
    }
    return _isInitial;
  }

  bool _didisLoading = false;
  bool _isLoading;

  @override
  bool get isLoading {
    if (_didisLoading == false) {
      _didisLoading = true;
      _isLoading = maybeWhen(loading: () => true, orElse: () => false);
    }
    return _isLoading;
  }

  bool _didisSuccess = false;
  bool _isSuccess;

  @override
  bool get isSuccess {
    if (_didisSuccess == false) {
      _didisSuccess = true;
      _isSuccess = maybeWhen(success: (_) => true, orElse: () => false);
    }
    return _isSuccess;
  }

  bool _didisError = false;
  bool _isError;

  @override
  bool get isError {
    if (_didisError == false) {
      _didisError = true;
      _isError = maybeWhen(error: (_, __) => true, orElse: () => false);
    }
    return _isError;
  }

  @override
  String toString() {
    return 'RemoteState<$T>.success(value: $value, isInitial: $isInitial, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T value),
    @required TResult error(dynamic error, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(T value),
    TResult error(dynamic error, StackTrace stackTrace),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements RemoteState<T> {
  factory _Success(T value) = _$_Success<T>;

  T get value;
  _$SuccessCopyWith<T, _Success<T>> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res> extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object error = freezed,
    Object stackTrace = freezed,
  }) {
    return _then(_Error<T>(
      error == freezed ? _value.error : error as dynamic,
      stackTrace == freezed ? _value.stackTrace : stackTrace as StackTrace,
    ));
  }
}

/// @nodoc
class _$_Error<T> implements _Error<T> {
  _$_Error([this.error, this.stackTrace]);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;

  bool _didisInitial = false;
  bool _isInitial;

  @override
  bool get isInitial {
    if (_didisInitial == false) {
      _didisInitial = true;
      _isInitial = maybeWhen(initial: () => true, orElse: () => false);
    }
    return _isInitial;
  }

  bool _didisLoading = false;
  bool _isLoading;

  @override
  bool get isLoading {
    if (_didisLoading == false) {
      _didisLoading = true;
      _isLoading = maybeWhen(loading: () => true, orElse: () => false);
    }
    return _isLoading;
  }

  bool _didisSuccess = false;
  bool _isSuccess;

  @override
  bool get isSuccess {
    if (_didisSuccess == false) {
      _didisSuccess = true;
      _isSuccess = maybeWhen(success: (_) => true, orElse: () => false);
    }
    return _isSuccess;
  }

  bool _didisError = false;
  bool _isError;

  @override
  bool get isError {
    if (_didisError == false) {
      _didisError = true;
      _isError = maybeWhen(error: (_, __) => true, orElse: () => false);
    }
    return _isError;
  }

  @override
  String toString() {
    return 'RemoteState<$T>.error(error: $error, stackTrace: $stackTrace, isInitial: $isInitial, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T value),
    @required TResult error(dynamic error, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(T value),
    TResult error(dynamic error, StackTrace stackTrace),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements RemoteState<T> {
  factory _Error([dynamic error, StackTrace stackTrace]) = _$_Error<T>;

  dynamic get error;
  StackTrace get stackTrace;
  _$ErrorCopyWith<T, _Error<T>> get copyWith;
}
