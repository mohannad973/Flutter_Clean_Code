// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleStateTearOff {
  const _$ScheduleStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _SuccessfulllyRetrivedData successfullyRetrievedData(
      AcceptedScheduleListEntity acceptedScheduleListEntity) {
    return _SuccessfulllyRetrivedData(
      acceptedScheduleListEntity,
    );
  }

  _Error error(ErrorModel? error) {
    return _Error(
      error,
    );
  }
}

/// @nodoc
const $ScheduleState = _$ScheduleStateTearOff();

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AcceptedScheduleListEntity acceptedScheduleListEntity)
        successfullyRetrievedData,
    required TResult Function(ErrorModel? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulllyRetrivedData value)
        successfullyRetrievedData,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ScheduleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AcceptedScheduleListEntity acceptedScheduleListEntity)
        successfullyRetrievedData,
    required TResult Function(ErrorModel? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulllyRetrivedData value)
        successfullyRetrievedData,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ScheduleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AcceptedScheduleListEntity acceptedScheduleListEntity)
        successfullyRetrievedData,
    required TResult Function(ErrorModel? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulllyRetrivedData value)
        successfullyRetrievedData,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduleState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessfulllyRetrivedDataCopyWith<$Res> {
  factory _$SuccessfulllyRetrivedDataCopyWith(_SuccessfulllyRetrivedData value,
          $Res Function(_SuccessfulllyRetrivedData) then) =
      __$SuccessfulllyRetrivedDataCopyWithImpl<$Res>;
  $Res call({AcceptedScheduleListEntity acceptedScheduleListEntity});
}

/// @nodoc
class __$SuccessfulllyRetrivedDataCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$SuccessfulllyRetrivedDataCopyWith<$Res> {
  __$SuccessfulllyRetrivedDataCopyWithImpl(_SuccessfulllyRetrivedData _value,
      $Res Function(_SuccessfulllyRetrivedData) _then)
      : super(_value, (v) => _then(v as _SuccessfulllyRetrivedData));

  @override
  _SuccessfulllyRetrivedData get _value =>
      super._value as _SuccessfulllyRetrivedData;

  @override
  $Res call({
    Object? acceptedScheduleListEntity = freezed,
  }) {
    return _then(_SuccessfulllyRetrivedData(
      acceptedScheduleListEntity == freezed
          ? _value.acceptedScheduleListEntity
          : acceptedScheduleListEntity // ignore: cast_nullable_to_non_nullable
              as AcceptedScheduleListEntity,
    ));
  }
}

/// @nodoc

class _$_SuccessfulllyRetrivedData implements _SuccessfulllyRetrivedData {
  const _$_SuccessfulllyRetrivedData(this.acceptedScheduleListEntity);

  @override
  final AcceptedScheduleListEntity acceptedScheduleListEntity;

  @override
  String toString() {
    return 'ScheduleState.successfullyRetrievedData(acceptedScheduleListEntity: $acceptedScheduleListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessfulllyRetrivedData &&
            const DeepCollectionEquality().equals(
                other.acceptedScheduleListEntity, acceptedScheduleListEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(acceptedScheduleListEntity));

  @JsonKey(ignore: true)
  @override
  _$SuccessfulllyRetrivedDataCopyWith<_SuccessfulllyRetrivedData>
      get copyWith =>
          __$SuccessfulllyRetrivedDataCopyWithImpl<_SuccessfulllyRetrivedData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AcceptedScheduleListEntity acceptedScheduleListEntity)
        successfullyRetrievedData,
    required TResult Function(ErrorModel? error) error,
  }) {
    return successfullyRetrievedData(acceptedScheduleListEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
  }) {
    return successfullyRetrievedData?.call(acceptedScheduleListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
    required TResult orElse(),
  }) {
    if (successfullyRetrievedData != null) {
      return successfullyRetrievedData(acceptedScheduleListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulllyRetrivedData value)
        successfullyRetrievedData,
    required TResult Function(_Error value) error,
  }) {
    return successfullyRetrievedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
  }) {
    return successfullyRetrievedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successfullyRetrievedData != null) {
      return successfullyRetrievedData(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulllyRetrivedData implements ScheduleState {
  const factory _SuccessfulllyRetrivedData(
          AcceptedScheduleListEntity acceptedScheduleListEntity) =
      _$_SuccessfulllyRetrivedData;

  AcceptedScheduleListEntity get acceptedScheduleListEntity;
  @JsonKey(ignore: true)
  _$SuccessfulllyRetrivedDataCopyWith<_SuccessfulllyRetrivedData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorModel? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final ErrorModel? error;

  @override
  String toString() {
    return 'ScheduleState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AcceptedScheduleListEntity acceptedScheduleListEntity)
        successfullyRetrievedData,
    required TResult Function(ErrorModel? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AcceptedScheduleListEntity acceptedScheduleListEntity)?
        successfullyRetrievedData,
    TResult Function(ErrorModel? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulllyRetrivedData value)
        successfullyRetrievedData,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulllyRetrivedData value)?
        successfullyRetrievedData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ScheduleState {
  const factory _Error(ErrorModel? error) = _$_Error;

  ErrorModel? get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
