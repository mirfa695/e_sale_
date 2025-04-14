import 'package:logiology/constants/color_constants.dart';
import 'package:logiology/modules/login/elements/login_body.dart';
import 'package:logiology/modules/login/elements/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       resizeToAvoidBottomInset: false,
      body:Container(
      decoration:  BoxDecoration(gradient: ColorConstants.customGradient),
      child:  Column(
        children: [
          Expanded(flex: 2, child: LoginHeader()),
          Expanded(
            flex: 5,
            child: LoginBody(),
          ),
        ],
      ),
    )
    );
  }
}