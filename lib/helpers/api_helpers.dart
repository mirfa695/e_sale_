import 'dart:convert';
import 'package:e_sale/models/product_model.dart';
import 'package:e_sale/models/product_response_model.dart';
import 'package:http/http.dart' as http;
class ApiHelper{
  static const String productsUrl="https://dummyjson.com/products";
 static Future<ProductResponseModel> getApiResponse() async {
    final response = await http.get(
        Uri.parse(productsUrl),
       );
    if (response.statusCode == 200) {
    
      var decodeData = jsonDecode(response.body);
      try{
        List<ProductModel> products = List<ProductModel>.from(
  decodeData["products"].map((e) => ProductModel.fromJson(e))
);
    return ProductResponseModel(products: products,status: ResponseStatus.success,title: "Success");
      }catch(e){
        return ProductResponseModel(products: [],status: ResponseStatus.failure,title: "Failed",message: e.toString());
      }
      

      
      
    } else {
      return ProductResponseModel(products: [],status:ResponseStatus.failure,title: "Failed",message: response.body.toString() );
     
    }
  }}