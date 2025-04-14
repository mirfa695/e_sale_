import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
   int? id,
   String? title,
   String? description,
   String ?category,
   double? price,
   double? rating,
   String? thumbnail,
   List<String>? images,
    List<String>? tags
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
      
        
}
