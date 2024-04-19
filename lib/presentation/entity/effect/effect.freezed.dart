// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Effect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function() hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function()? hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectCopyWith<$Res> {
  factory $EffectCopyWith(Effect value, $Res Function(Effect) then) =
      _$EffectCopyWithImpl<$Res, Effect>;
}

/// @nodoc
class _$EffectCopyWithImpl<$Res, $Val extends Effect>
    implements $EffectCopyWith<$Res> {
  _$EffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SnackBarEffectImplCopyWith<$Res> {
  factory _$$SnackBarEffectImplCopyWith(_$SnackBarEffectImpl value,
          $Res Function(_$SnackBarEffectImpl) then) =
      __$$SnackBarEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String text,
      Duration duration,
      bool closeCurrentSnackbar,
      SnackBarBehavior behavior});
}

/// @nodoc
class __$$SnackBarEffectImplCopyWithImpl<$Res>
    extends _$EffectCopyWithImpl<$Res, _$SnackBarEffectImpl>
    implements _$$SnackBarEffectImplCopyWith<$Res> {
  __$$SnackBarEffectImplCopyWithImpl(
      _$SnackBarEffectImpl _value, $Res Function(_$SnackBarEffectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? duration = null,
    Object? closeCurrentSnackbar = null,
    Object? behavior = null,
  }) {
    return _then(_$SnackBarEffectImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      closeCurrentSnackbar: null == closeCurrentSnackbar
          ? _value.closeCurrentSnackbar
          : closeCurrentSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      behavior: null == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior,
    ));
  }
}

/// @nodoc

class _$SnackBarEffectImpl implements SnackBarEffect {
  _$SnackBarEffectImpl(
      {required this.text,
      this.duration = const Duration(seconds: 4),
      this.closeCurrentSnackbar = true,
      this.behavior = SnackBarBehavior.floating});

  @override
  final String text;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final bool closeCurrentSnackbar;
  @override
  @JsonKey()
  final SnackBarBehavior behavior;

  @override
  String toString() {
    return 'Effect.snackBar(text: $text, duration: $duration, closeCurrentSnackbar: $closeCurrentSnackbar, behavior: $behavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarEffectImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.closeCurrentSnackbar, closeCurrentSnackbar) ||
                other.closeCurrentSnackbar == closeCurrentSnackbar) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, duration, closeCurrentSnackbar, behavior);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarEffectImplCopyWith<_$SnackBarEffectImpl> get copyWith =>
      __$$SnackBarEffectImplCopyWithImpl<_$SnackBarEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function() hideKeyboard,
  }) {
    return snackBar(text, duration, closeCurrentSnackbar, behavior);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function()? hideKeyboard,
  }) {
    return snackBar?.call(text, duration, closeCurrentSnackbar, behavior);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(text, duration, closeCurrentSnackbar, behavior);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return snackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class SnackBarEffect implements Effect {
  factory SnackBarEffect(
      {required final String text,
      final Duration duration,
      final bool closeCurrentSnackbar,
      final SnackBarBehavior behavior}) = _$SnackBarEffectImpl;

  String get text;
  Duration get duration;
  bool get closeCurrentSnackbar;
  SnackBarBehavior get behavior;
  @JsonKey(ignore: true)
  _$$SnackBarEffectImplCopyWith<_$SnackBarEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideKeyboardEffectImplCopyWith<$Res> {
  factory _$$HideKeyboardEffectImplCopyWith(_$HideKeyboardEffectImpl value,
          $Res Function(_$HideKeyboardEffectImpl) then) =
      __$$HideKeyboardEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideKeyboardEffectImplCopyWithImpl<$Res>
    extends _$EffectCopyWithImpl<$Res, _$HideKeyboardEffectImpl>
    implements _$$HideKeyboardEffectImplCopyWith<$Res> {
  __$$HideKeyboardEffectImplCopyWithImpl(_$HideKeyboardEffectImpl _value,
      $Res Function(_$HideKeyboardEffectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideKeyboardEffectImpl implements HideKeyboardEffect {
  _$HideKeyboardEffectImpl();

  @override
  String toString() {
    return 'Effect.hideKeyboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideKeyboardEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function() hideKeyboard,
  }) {
    return hideKeyboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function()? hideKeyboard,
  }) {
    return hideKeyboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return hideKeyboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return hideKeyboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard(this);
    }
    return orElse();
  }
}

abstract class HideKeyboardEffect implements Effect {
  factory HideKeyboardEffect() = _$HideKeyboardEffectImpl;
}
