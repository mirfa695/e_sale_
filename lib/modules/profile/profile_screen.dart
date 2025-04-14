import 'dart:io';

import 'package:logiology/common_widgets/custom_button.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/profile/controller/profile_controller.dart';
import 'package:logiology/modules/profile/elements/image_bottom_sheet.dart';
import 'package:logiology/modules/profile/profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
          Obx(()=>  Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: controller.imagePath.value!=null? DecorationImage(image:FileImage(File(controller.imagePath.value!),),fit: BoxFit.cover):null,
                gradient: LinearGradient(colors: ColorConstants.gradientColors)
              ),
            ))
           ,
            Positioned(
              bottom: -10,
              right: 10,
              child: InkWell(
                onTap: (){
                   showModalBottomSheet(context: context,
                    isDismissible: true,
                    builder: (context)=>ImageBottomSheet());
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                ),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:Obx(()=> Column(
              spacing: 10,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: ()=>controller.setToEdit(),
                      child: Icon(Icons.edit,color: ColorConstants.tertiary,))
                  ],
                ),
                 ProfileListTile(title:controller.profile.value?.username?? "N/A",icon: Icons.person,onChanged: (val)=>controller.updateUserName(val),),
                    
                     ProfileListTile(title:controller.profile.value?.password?? "N/A",icon: Icons.lock,onChanged: (val)=>controller.updatePassWord(val),)
              ,  if(controller.isEdit.value)
                  CustomButton(onPressed: (){
                    controller.updateProfile(context);
                  },text: "Update",)
              ],
            )),
          ),
        )
        
          
      ],
    );
  }
}
