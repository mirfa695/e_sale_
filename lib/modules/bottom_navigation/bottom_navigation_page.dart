import 'package:logiology/common_widgets/mesh_gradiant.dart';
import 'package:logiology/modules/bottom_navigation/elemtents/home_page_header.dart';
import 'package:logiology/modules/bottom_navigation/navigation_controller.dart';
import 'package:logiology/modules/home_screen.dart/home_screen.dart';
import 'package:logiology/modules/product_screen/product_screen.dart';
import 'package:logiology/modules/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'elemtents/bottom_navigation_footer.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final navigationController = Get.put(NavigationController());

    return MeshGradientBackground(
      child: Stack(
        children: [
          
          Positioned(
            top: 10,
            left: 20,
            child: HomePageHeader()
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Obx(()=> IndexedStack(
                index: navigationController.selectedIndex.value,
                children: [HomeScreen(),ProductScreen(),ProfileScreen()],
              ) ),
            ),
          ),
        BottomNavigationFooter()
          
         
        ],
      ),
    );
  }
}
