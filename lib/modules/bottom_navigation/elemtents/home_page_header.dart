import 'package:e_sale/constants/color_constants.dart';
import 'package:e_sale/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    return Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorConstants.secondary,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Obx(()=>  Text(
                      controller.profile.value?.username?.capitalizeFirst??"N/A",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Text(
                      "admin@gmail.com",
                      style: TextStyle(
                        color: ColorConstants.greyColor,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            );
  }
}