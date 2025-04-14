import 'package:e_sale/common_widgets/custom_text_field.dart';
import 'package:e_sale/constants/color_constants.dart';
import 'package:e_sale/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Column(
      spacing: 20,
      children: [
        CustomTextField(
          hintText: "User name",
          prefixIcon:Icon(Icons.person,color: ColorConstants.lightGreyColr,) ,
          onChanged: (val){
            loginController. updateUserName(val); 
          },
        ),
        CustomTextField(
          hintText: "Password",
          prefixIcon:Icon(Icons.lock,color: ColorConstants.lightGreyColr,) ,
          onChanged: (val){
            loginController. updatePassWord(val); 
          },
        )
      ],
    );
  }
}