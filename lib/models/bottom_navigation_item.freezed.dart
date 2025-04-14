// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BottomNavigationItem _$BottomNavigationItemFromJson(Map<String, dynamic> json) {
  return _BottomNavigationItem.fromJson(json);
}

/// @nodoc
mixin _$BottomNavigationItem {
  String? get text => throw _privateConstructorUsedError;
  @IconDataConverter()
  IconData? get icon => throw _privateConstructorUsedError;

  /// Serializes this BottomNavigationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavigationItemCopyWith<BottomNavigationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationItemCopyWith<$Res> {
  factory $BottomNavigationItemCopyWith(BottomNavigationItem value,
          $Res Function(BottomNavigationItem) then) =
      _$BottomNavigationItemCopyWithImpl<$Res, BottomNavigationItem>;
  @useResult
  $Res call({String? text, @IconDataConverter() IconData? icon});
}

/// @nodoc
class _$BottomNavigationItemCopyWithImpl<$Res,
        $Val extends BottomNavigationItem>
    implements $BottomNavigationItemCopyWith<$Res> {
  _$BottomNavigationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavigationItemImplCopyWith<$Res>
    implements $BottomNavigationItemCopyWith<$Res> {
  factory _$$BottomNavigationItemImplCopyWith(_$BottomNavigationItemImpl value,
          $Res Function(_$BottomNavigationItemImpl) then) =
      __$$BottomNavigationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, @IconDataConverter() IconData? icon});
}

/// @nodoc
class __$$BottomNavigationItemImplCopyWithImpl<$Res>
    extends _$BottomNavigationItemCopyWithImpl<$Res, _$BottomNavigationItemImpl>
    implements _$$BottomNavigationItemImplCopyWith<$Res> {
  __$$BottomNavigationItemImplCopyWithImpl(_$BottomNavigationItemImpl _value,
      $Res Function(_$BottomNavigationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$BottomNavigationItemImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BottomNavigationItemImpl implements _BottomNavigationItem {
  const _$BottomNavigationItemImpl({this.text, @IconDataConverter() this.icon});

  factory _$BottomNavigationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BottomNavigationItemImplFromJson(json);

  @override
  final String? text;
  @override
  @IconDataConverter()
  final IconData? icon;

  @override
  String toString() {
    return 'BottomNavigationItem(text: $text, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationItemImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  /// Create a copy of BottomNavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationItemImplCopyWith<_$BottomNavigationItemImpl>
      get copyWith =>
          __$$BottomNavigationItemImplCopyWithImpl<_$BottomNavigationItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BottomNavigationItemImplToJson(
      this,
    );
  }
}

abstract class _BottomNavigationItem implements BottomNavigationItem {
  const factory _BottomNavigationItem(
      {final String? text,
      @IconDataConverter() final IconData? icon}) = _$BottomNavigationItemImpl;

  factory _BottomNavigationItem.fromJson(Map<String, dynamic> json) =
      _$BottomNavigationItemImpl.fromJson;

  @override
  String? get text;
  @override
  @IconDataConverter()
  IconData? get icon;

  /// Create a copy of BottomNavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavigationItemImplCopyWith<_$BottomNavigationItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
