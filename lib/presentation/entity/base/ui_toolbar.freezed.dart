// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_toolbar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UIToolbar {
  String get title => throw _privateConstructorUsedError;
  bool get hasBackButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UIToolbarCopyWith<UIToolbar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIToolbarCopyWith<$Res> {
  factory $UIToolbarCopyWith(UIToolbar value, $Res Function(UIToolbar) then) =
      _$UIToolbarCopyWithImpl<$Res, UIToolbar>;
  @useResult
  $Res call({String title, bool hasBackButton});
}

/// @nodoc
class _$UIToolbarCopyWithImpl<$Res, $Val extends UIToolbar>
    implements $UIToolbarCopyWith<$Res> {
  _$UIToolbarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hasBackButton = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hasBackButton: null == hasBackButton
          ? _value.hasBackButton
          : hasBackButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UIToolbarImplCopyWith<$Res>
    implements $UIToolbarCopyWith<$Res> {
  factory _$$UIToolbarImplCopyWith(
          _$UIToolbarImpl value, $Res Function(_$UIToolbarImpl) then) =
      __$$UIToolbarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, bool hasBackButton});
}

/// @nodoc
class __$$UIToolbarImplCopyWithImpl<$Res>
    extends _$UIToolbarCopyWithImpl<$Res, _$UIToolbarImpl>
    implements _$$UIToolbarImplCopyWith<$Res> {
  __$$UIToolbarImplCopyWithImpl(
      _$UIToolbarImpl _value, $Res Function(_$UIToolbarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hasBackButton = null,
  }) {
    return _then(_$UIToolbarImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hasBackButton: null == hasBackButton
          ? _value.hasBackButton
          : hasBackButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UIToolbarImpl implements _UIToolbar {
  _$UIToolbarImpl({required this.title, required this.hasBackButton});

  @override
  final String title;
  @override
  final bool hasBackButton;

  @override
  String toString() {
    return 'UIToolbar(title: $title, hasBackButton: $hasBackButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIToolbarImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hasBackButton, hasBackButton) ||
                other.hasBackButton == hasBackButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, hasBackButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UIToolbarImplCopyWith<_$UIToolbarImpl> get copyWith =>
      __$$UIToolbarImplCopyWithImpl<_$UIToolbarImpl>(this, _$identity);
}

abstract class _UIToolbar implements UIToolbar {
  factory _UIToolbar(
      {required final String title,
      required final bool hasBackButton}) = _$UIToolbarImpl;

  @override
  String get title;
  @override
  bool get hasBackButton;
  @override
  @JsonKey(ignore: true)
  _$$UIToolbarImplCopyWith<_$UIToolbarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
