import 'package:flutter/material.dart';
import 'package:logiology/common_widgets/mesh_gradiant.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/models/product_model.dart';

class ProductDetailsPage extends StatelessWidget {
final ProductModel? product;
  const ProductDetailsPage({super.key,this.product});

  @override
  Widget build(BuildContext context) {
    return MeshGradientBackground(
      child: Stack(
        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal:  20),
            child: Container(
             
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white,),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  spacing: 10,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/2.5,
                          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(product?.thumbnail?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNNLEL-qmmLeFR1nxJuepFOgPYfnwHR56vcw&s"),fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Text(product?.title?? "title",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Text(product?.description?? "No description"),
                    Text("Price: ₹ ${product?.price}/-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: ColorConstants.primary),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                      children: [
                         ...product?.tags?.map((e){
                     return Container(child: Text("#${e}"),decoration: BoxDecoration(border: Border.all(color: ColorConstants.extraLightGrey)),);
                    }).toList()??[]
                      ],
                    )
                   
                   
                    
                  ],
                ),
              ),
            ),
            ),
          ),
          Positioned(
            top: 10,
            left: 30,
            child:InkWell(
              onTap: ()=>Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios_new)) ),
        ],
      ),
    );
  }
}