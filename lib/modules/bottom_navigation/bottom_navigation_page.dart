import 'package:e_sale/common_widgets/mesh_gradiant.dart';
import 'package:e_sale/modules/bottom_navigation/elemtents/home_page_header.dart';
import 'package:e_sale/modules/bottom_navigation/navigation_controller.dart';
import 'package:e_sale/modules/home_screen.dart/home_screen.dart';
import 'package:e_sale/modules/product_screen/product_screen.dart';
import 'package:e_sale/modules/profile/profile_screen.dart';
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
