import 'package:logiology/common_widgets/custom_text_field.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileListTile extends StatelessWidget {
 final String? title;
 final IconData? icon;
 final Function(String)? onChanged;
  const ProfileListTile({super.key,this.icon,this.title,this.onChanged});

  @override
  Widget build(BuildContext context) {
     final ProfileController controller = Get.put(ProfileController());
    return Obx(()=> Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          color: Colors.white,
           child:  ListTile(
              leading: Icon(
               icon?? Icons.person,
                size: 20,
              ),
              title:controller.isEdit.value?CustomTextField(
                value:title,
                onChanged: onChanged,
              ): Text(
               title??"",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ), ),
              
         ));
  }
}