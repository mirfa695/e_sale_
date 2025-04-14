// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navigation_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BottomNavigationItemImpl _$$BottomNavigationItemImplFromJson(
        Map<String, dynamic> json) =>
    _$BottomNavigationItemImpl(
      text: json['text'] as String?,
      icon: const IconDataConverter().fromJson(json['icon'] as String?),
    );

Map<String, dynamic> _$$BottomNavigationItemImplToJson(
        _$BottomNavigationItemImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': const IconDataConverter().toJson(instance.icon),
    };
