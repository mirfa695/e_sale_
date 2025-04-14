import 'package:logiology/helpers/model_helpers.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_item.freezed.dart';
part 'bottom_navigation_item.g.dart';

@freezed
class BottomNavigationItem with _$BottomNavigationItem {
  const factory BottomNavigationItem({
    String? text,
    @IconDataConverter() IconData? icon,
  }) = _BottomNavigationItem;

  factory BottomNavigationItem.fromJson(Map<String, dynamic> json) =>
      _$BottomNavigationItemFromJson(json);
      
        
}
