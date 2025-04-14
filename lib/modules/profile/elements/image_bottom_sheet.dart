import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ImageBottomSheet extends StatelessWidget {
  const ImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
 border: Border.all(color: ColorConstants.primary),
 borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        SizedBox(
                          height: 100,width: 100,
                          child: InkWell(
                            onTap: ()=>controller.getImageFromCamera().then((v)=>Navigator.pop(context)),
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  spacing: 5,
                                  children: [
                                    Icon(Icons.camera),
                                    Text("Camera")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100,width: 100,
                          child: InkWell(
                            onTap: ()=>controller.getImageFromGallery().then((v)=>Navigator.pop(context)),
                            child: Card(color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  spacing: 5,
                                  children: [
                                    Icon(Icons.photo_camera_back_outlined),
                                    Text("Gallery")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],),
                    ),
                   );
  }
}