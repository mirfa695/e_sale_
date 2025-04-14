import 'dart:math';

import 'package:e_sale/helpers/api_helpers.dart';
import 'package:e_sale/models/product_model.dart';
import 'package:e_sale/models/product_response_model.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
   Rx<ProductResponseModel> productResponse = Rx<ProductResponseModel>(ProductResponseModel());
   var isLoading = false.obs;
  RxList randomProducts =[].obs;
  RxList tags=[].obs;
  RxList category=[].obs;
  RxList selectedTags=[].obs;
  RxList selectedCategories=[].obs;
  RxList selectedPriceList=[].obs;
  
  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  Future<void> loadProducts() async {
    isLoading(true);
    
    Random random=Random();
    try{
      productResponse.value= await ApiHelper.getApiResponse();
    }catch(e){
       productResponse.value=ProductResponseModel(products: [],title: "Failed",message: e.toString(),status: ResponseStatus.failure);
    }
   tags.value=productResponse.value.products?.expand((e)=>e.tags?.map((e)=>e.toString()).toList()??[]).toSet().toList()??[];
   category.value=productResponse.value.products?.map((e)=>e.category).toSet().toList()??[];
   final Set<int> randomIndexes = {};
    List<ProductModel> products=productResponse.value.products??[];
  while (randomIndexes.length < 10 && randomIndexes.length < products.length) {
    randomIndexes.add(random.nextInt(products.length));
  }
  randomProducts.value = randomIndexes.map((i) => products[i]).toList();
  isLoading(false);
  }
  
   void addtoTagList(String tag) {
    if(selectedTags.contains(tag)){
      selectedTags.remove(tag);
    }else{
      selectedTags.add(tag);
    }
   
  }
   void addtoCategoryList(String category) {
    if(selectedCategories.contains(category)){
      selectedCategories.remove(category);
    }else{
      selectedCategories.add(category);
    }
   
  }
   void addToPriceList(int price) {
    if(selectedPriceList.contains(price)){
      selectedPriceList.remove(price);
    }else{
      selectedPriceList.add(price);
    }}

    Future<void> applyFilter() async {
      isLoading(true);
       ProductResponseModel responseModel= await ApiHelper.getApiResponse();
     List<ProductModel> filteredProducts = responseModel.products?.where((product) {
  final hasCategory = selectedCategories.isEmpty || selectedCategories.contains(product.category);

  final hasTag = selectedTags.isEmpty || (product.tags?.any((tag) => selectedTags.contains(tag)) ?? false);

       final hasPrice = selectedPriceList.isEmpty || 
                      (product.price != null && 
                       selectedPriceList.any((priceRange){
                      print(priceRange);
                      return  ( product.price! > priceRange);}));

  return hasCategory && hasTag && hasPrice;
}).toList() ?? [];
    productResponse.value=productResponse.value.copyWith(products: filteredProducts);
    isLoading(false);
    }
    Future<void> resetFilter() async {
      selectedCategories.value=[];
      selectedPriceList.value=[];
      selectedTags.value=[];
      await loadProducts();
    }
}