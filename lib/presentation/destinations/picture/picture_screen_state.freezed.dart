// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PictureScreenState {
  UIToolbar get toolbar => throw _privateConstructorUsedError;
  bool get showLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PictureScreenStateCopyWith<PictureScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureScreenStateCopyWith<$Res> {
  factory $PictureScreenStateCopyWith(
          PictureScreenState value, $Res Function(PictureScreenState) then) =
      _$PictureScreenStateCopyWithImpl<$Res, PictureScreenState>;
  @useResult
  $Res call({UIToolbar toolbar, bool showLoading});

  $UIToolbarCopyWith<$Res> get toolbar;
}

/// @nodoc
class _$PictureScreenStateCopyWithImpl<$Res, $Val extends PictureScreenState>
    implements $PictureScreenStateCopyWith<$Res> {
  _$PictureScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolbar = null,
    Object? showLoading = null,
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
abstract class _$$PictureScreenStateImplCopyWith<$Res>
    implements $PictureScreenStateCopyWith<$Res> {
  factory _$$PictureScreenStateImplCopyWith(_$PictureScreenStateImpl value,
          $Res Function(_$PictureScreenStateImpl) then) =
      __$$PictureScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UIToolbar toolbar, bool showLoading});

  @override
  $UIToolbarCopyWith<$Res> get toolbar;
}

/// @nodoc
class __$$PictureScreenStateImplCopyWithImpl<$Res>
    extends _$PictureScreenStateCopyWithImpl<$Res, _$PictureScreenStateImpl>
    implements _$$PictureScreenStateImplCopyWith<$Res> {
  __$$PictureScreenStateImplCopyWithImpl(_$PictureScreenStateImpl _value,
      $Res Function(_$PictureScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolbar = null,
    Object? showLoading = null,
  }) {
    return _then(_$PictureScreenStateImpl(
      toolbar: null == toolbar
          ? _value.toolbar
          : toolbar // ignore: cast_nullable_to_non_nullable
              as UIToolbar,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PictureScreenStateImpl implements _PictureScreenState {
  _$PictureScreenStateImpl({required this.toolbar, required this.showLoading});

  @override
  final UIToolbar toolbar;
  @override
  final bool showLoading;

  @override
  String toString() {
    return 'PictureScreenState(toolbar: $toolbar, showLoading: $showLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureScreenStateImpl &&
            (identical(other.toolbar, toolbar) || other.toolbar == toolbar) &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toolbar, showLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureScreenStateImplCopyWith<_$PictureScreenStateImpl> get copyWith =>
      __$$PictureScreenStateImplCopyWithImpl<_$PictureScreenStateImpl>(
          this, _$identity);
}

abstract class _PictureScreenState implements PictureScreenState {
  factory _PictureScreenState(
      {required final UIToolbar toolbar,
      required final bool showLoading}) = _$PictureScreenStateImpl;

  @override
  UIToolbar get toolbar;
  @override
  bool get showLoading;
  @override
  @JsonKey(ignore: true)
  _$$PictureScreenStateImplCopyWith<_$PictureScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
