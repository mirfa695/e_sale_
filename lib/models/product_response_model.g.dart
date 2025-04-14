// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseModelImpl _$$ProductResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseModelImpl(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      title: json['title'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProductResponseModelImplToJson(
        _$ProductResponseModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'status': _$ResponseStatusEnumMap[instance.status],
      'title': instance.title,
      'message': instance.message,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.success: 'success',
  ResponseStatus.failure: 'failure',
  ResponseStatus.warning: 'warning',
};
