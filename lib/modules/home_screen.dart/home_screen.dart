import 'package:logiology/common_widgets/product_debug_widget.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/bottom_navigation/navigation_controller.dart';
import 'package:logiology/modules/home_screen.dart/elements/product_card.dart';
import 'package:logiology/modules/product_screen/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final ProductsController controller = Get.put(ProductsController());
    final NavigationController navController = Get.put(NavigationController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          SizedBox(height: 10,),
          Text("Explore our New Collection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(
            width: MediaQuery.of(context).size.width-40,
            child:Obx(()=>  ProductDebugWidget(
               isLoading:controller.isLoading.value,
              responseModel: controller.productResponse.value,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  spacing: 10,
                    children: [
                      for(int i=0;i<10 ;i++)
                      
                       Card(
                            color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: controller.isLoading.value?null: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage( controller.randomProducts[i].thumbnail?? "https://cdn.pixabay.com/photo/2024/04/29/04/21/tshirt-8726721_1280.jpg"))),
                          ),
                        ),
                      )  
                    ],
                  
                )),
              ),
            ),
          ),
           
         Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meet our new products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap:(){
                    navController.changeIndex(1);
                },
                child: Text("Explore more",style: TextStyle(color: ColorConstants.greyColor),)),
                 ],
          ),
            ],
          ),
         
          SizedBox(
            height: MediaQuery.of(context).size.height/3.2,
            child:Obx(()=> ProductDebugWidget(
              responseModel: controller.productResponse.value,
              isLoading: controller.isLoading.value,
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    for(int i=0;i<( controller.isLoading.value?10:controller.productResponse.value.products?.length??0);i++)
                    
     
       ProductCard(
        product: controller.isLoading.value ? null : controller.productResponse.value.products?[i],
        
      )
    
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}