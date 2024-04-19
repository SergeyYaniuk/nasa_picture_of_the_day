// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenState {
  UIToolbar get toolbar => throw _privateConstructorUsedError;
  bool get showLoading => throw _privateConstructorUsedError;
  Apod? get apod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({UIToolbar toolbar, bool showLoading, Apod? apod});

  $UIToolbarCopyWith<$Res> get toolbar;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolbar = null,
    Object? showLoading = null,
    Object? apod = freezed,
  }) {
    return _then(_value.copyWith(
      toolbar: null == toolbar
          ? _value.toolbar
          : toolbar // ignore: cast_nullable_to_non_nullable
              as UIToolbar,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apod: freezed == apod
          ? _value.apod
          : apod // ignore: cast_nullable_to_non_nullable
              as Apod?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIToolbarCopyWith<$Res> get toolbar {
    return $UIToolbarCopyWith<$Res>(_value.toolbar, (value) {
      return _then(_value.copyWith(toolbar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeScreenStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenStateImplCopyWith(_$HomeScreenStateImpl value,
          $Res Function(_$HomeScreenStateImpl) then) =
      __$$HomeScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UIToolbar toolbar, bool showLoading, Apod? apod});

  @override
  $UIToolbarCopyWith<$Res> get toolbar;
}

/// @nodoc
class __$$HomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenStateImpl>
    implements _$$HomeScreenStateImplCopyWith<$Res> {
  __$$HomeScreenStateImplCopyWithImpl(
      _$HomeScreenStateImpl _value, $Res Function(_$HomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolbar = null,
    Object? showLoading = null,
    Object? apod = freezed,
  }) {
    return _then(_$HomeScreenStateImpl(
      toolbar: null == toolbar
          ? _value.toolbar
          : toolbar // ignore: cast_nullable_to_non_nullable
              as UIToolbar,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apod: freezed == apod
          ? _value.apod
          : apod // ignore: cast_nullable_to_non_nullable
              as Apod?,
    ));
  }
}

/// @nodoc

class _$HomeScreenStateImpl implements _HomeScreenState {
  const _$HomeScreenStateImpl(
      {required this.toolbar, required this.showLoading, required this.apod});

  @override
  final UIToolbar toolbar;
  @override
  final bool showLoading;
  @override
  final Apod? apod;

  @override
  String toString() {
    return 'HomeScreenState(toolbar: $toolbar, showLoading: $showLoading, apod: $apod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenStateImpl &&
            (identical(other.toolbar, toolbar) || other.toolbar == toolbar) &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading) &&
            (identical(other.apod, apod) || other.apod == apod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toolbar, showLoading, apod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      __$$HomeScreenStateImplCopyWithImpl<_$HomeScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required final UIToolbar toolbar,
      required final bool showLoading,
      required final Apod? apod}) = _$HomeScreenStateImpl;

  @override
  UIToolbar get toolbar;
  @override
  bool get showLoading;
  @override
  Apod? get apod;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
