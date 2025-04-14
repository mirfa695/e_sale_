import 'package:logiology/common_widgets/custom_button.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/product_screen/elements/filter_elements.dart';
import 'package:logiology/modules/product_screen/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
     final ProductsController controller = Get.put(ProductsController());
    return  Container(
     
      decoration: BoxDecoration(
 color: Colors.white,
 border: Border.all(color: ColorConstants.primary),
 borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      
          padding: EdgeInsets.all(16),
          // height: 250,
          width: double.infinity,
          child:Obx(()=> Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                
             
              Text(
                'Filters',
                style:Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black),
              ),
              Spacer(),
              InkWell(
                onTap: (){controller.resetFilter();
                Navigator.pop(context);
                },
                child: Text("Reset",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: ColorConstants.primary),))
              ],),
              
              SizedBox(height: 3,),
              FilterElements(title: "Price",
              isSelected: (p0) => controller.selectedPriceList.contains(p0),
              onTap: (p0){
                controller.addToPriceList(((p0+1)*100));
              },
              elements: [
                for(int i=1;i<10;i++)
                "<${(i*100)}"
              ],
              )
              ,
              SizedBox(height: 3,),
              FilterElements(title: "Tag",
                isSelected: (p0) => controller.selectedTags.contains(p0),
              onTap: (p0){
                controller.addtoTagList(p0);
              },
              elements: [
                ...controller.tags.map((e){
                 return e;
                })
                
              ],
              ),
              FilterElements(title: "Category",
                isSelected: (p0) => controller.selectedCategories.contains(p0),
              onTap: (p0){
                controller.addtoCategoryList(p0);
              },
              elements: [
               ...controller.category.map((e)=>e)
              ],
              )
              ,
             CustomButton(onPressed:(){controller.applyFilter();
             Navigator.pop(context);
             },text: "Apply",)
              ],
              
          )),
        );
  }
}