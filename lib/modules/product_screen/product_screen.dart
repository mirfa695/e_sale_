import 'package:logiology/common_widgets/custom_button.dart';
import 'package:logiology/common_widgets/custom_search_field.dart';
import 'package:logiology/common_widgets/product_debug_widget.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/home_screen.dart/elements/product_card.dart';
import 'package:logiology/modules/product_screen/filter_bottom_sheet.dart';
import 'package:logiology/modules/product_screen/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final ProductsController controller = Get.put(ProductsController());
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5 ,vertical: 10.0),
      child: Column(
        spacing: 10,
        children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width-80,
              child: CustomSearchField(hintText: "Search products",
              onChanged: (val)=>controller.searchProducts(val),
              prefixIcon: Icon(Icons.search,color: ColorConstants.lightGreyColr,),)),
          CustomButton(onPressed: (){
            showModalBottomSheet(context: context,isDismissible: true, builder: (context)=>FilterBottomSheet());
          },icon: Icons.filter_alt_outlined,backgroundColor: Colors.white,)
          ],
        ),
       
        SizedBox(
          height: MediaQuery.of(context).size.height-241,
          child:Obx(()=> ProductDebugWidget(
           isLoading: controller.isLoading.value,
            responseModel: controller.productResponse.value,
            child:  SingleChildScrollView(
              child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    for(int i=0;i<(controller.productResponse.value.products?.length??10);i++)
                  ProductCard(product:controller.isLoading.value?null: controller.productResponse.value.products?[i],)
                   ],
                ),
            ),
          ),
        ))
      ],),
    );
  }
}