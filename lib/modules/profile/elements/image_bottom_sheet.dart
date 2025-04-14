import 'package:e_sale/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ImageBottomSheet extends StatelessWidget {
  const ImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Card(
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
                        Card(
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
                        )
                      ],),
                    ),
                   );
  }
}