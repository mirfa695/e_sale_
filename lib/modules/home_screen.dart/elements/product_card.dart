import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logiology/modules/product_screen/elements/product_details_page.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? product;
  const ProductCard({super.key,this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Get.to(()=>ProductDetailsPage(product: product,)),
      child: SizedBox(
        width: (MediaQuery.of(context).size.width/2)-40,
        child: Card(
          
          color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                 
                  height: 80,
                  decoration: BoxDecoration(
                    
                    image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(product?.thumbnail?? "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"))),
                ),
                Positioned(
                  right: 10,
                  child: Material(
                   // shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    elevation: 10,
                    child: Icon(Icons.favorite,color: Colors.white,)),
                )
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:5 ),
              child: 
              Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(product?.title?? "N/A",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                    SizedBox(
              height: 20,
              child: Text(
                product?.description??
                "No desc",style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,))
                ,Text("₹ ${product?.price}",style: TextStyle(fontWeight: FontWeight.w600,color: ColorConstants.tertiary,fontSize: 20),)
               ,SizedBox(height: 5,),
               Text("Rating: ${product?.rating??"N/A"}")
                ],
              ),
            
             
            ),
           
          ],
        ),
        ),
      ),
    );
  }
}