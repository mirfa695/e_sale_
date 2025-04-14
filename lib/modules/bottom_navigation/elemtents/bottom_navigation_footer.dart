import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/bottom_navigation/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationFooter extends StatelessWidget {
  const BottomNavigationFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationController());
    return  Obx(() {
            int selectedIndex = navigationController.selectedIndex.value;
             double itemWidth = (MediaQuery.of(context).size.width/3);
            return Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Stack(
                  children: [
                  
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      left: (selectedIndex * itemWidth)+20,
                      bottom: 8,
                      child: Container(
                        width: itemWidth-40,
                        height: 120,
                        decoration: BoxDecoration(
                          color: ColorConstants.whiteColor,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(100),
                          ),
                         
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:
                          navigationController.bottomNavigationItems.map((e) {
                        int index = navigationController.bottomNavigationItems
                            .indexOf(e);
                        return InkWell(
                          onTap: () =>
                              navigationController.changeIndex(index),
                          child: SizedBox(
                            width: itemWidth,
                            height: 60,
                            child: Icon(
                              e.icon,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            );
          });
  }
}