import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class IconDataConverter implements JsonConverter<IconData?, String?> {
  const IconDataConverter();

  @override
  IconData? fromJson(String? json) {
    if (json == null) return null;
        return IconData(int.parse(json), fontFamily: 'MaterialIcons');
  }

  @override
  String? toJson(IconData? object) {
    if (object == null) return null;
    return object.codePoint.toString();
  }
}