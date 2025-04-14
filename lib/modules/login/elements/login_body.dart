import 'package:logiology/common_widgets/custom_button.dart';
import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/bottom_navigation/bottom_navigation_page.dart';
import 'package:logiology/modules/login/elements/login_form.dart';
import 'package:logiology/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
     final LoginController loginController = Get.put(LoginController());
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child:Column(
          spacing: 60,
          mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",style: TextStyle(fontFamily: "PlayFair",fontWeight: FontWeight.bold,fontSize: 25),),
            LoginForm(),
           Obx(()=>  Column(
            spacing: 10,
              children: [
                 if(loginController.errorMessage.value.isNotEmpty==true) 
           Text(loginController.errorMessage.value,style: TextStyle(color: ColorConstants.redColor),),
            CustomButton(onPressed: () async {
              await loginController.checkUser().then((v){
                if(v==true){
                   Get.to(()=>BottomNavigationPage());
                }
              });
             
            },text: "Login",backgroundColor: Colors.black)
              ],
            ))
         
          ],
        ),)
      

    );
  }
}