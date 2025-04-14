import 'package:logiology/models/bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;
  List<BottomNavigationItem> bottomNavigationItems=[
    BottomNavigationItem(text: "Home",icon: Icons.home),
    BottomNavigationItem(text: "Products",icon: Icons.shopping_bag_rounded),
    BottomNavigationItem(text: "Profile",icon: Icons.person)
  ];
  Future<void> changeIndex(int index) async {
    selectedIndex.value = index;
    
  }
}
