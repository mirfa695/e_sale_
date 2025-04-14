import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logiology/models/product_model.dart';

part 'product_response_model.freezed.dart';
part 'product_response_model.g.dart';

@freezed
class ProductResponseModel with _$ProductResponseModel {
  const factory ProductResponseModel({
    List<ProductModel>? products,
    ResponseStatus? status,
    String? title,
    String? message,
  }) = _ProductResponseModel;

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
}


enum ResponseStatus { success, failure, warning }
