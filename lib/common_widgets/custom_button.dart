import 'package:e_sale/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color? iconColor;
  final Color textColor;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? height;
  final Widget? customWidget;
  final double? width;

  const CustomButton({
    Key? key,
     this.text,
    required this.onPressed,
    this.icon,
    this.backgroundColor =ColorConstants.secondary,
    this.textColor = Colors.white,
    this.borderRadius,
    this.iconColor,
    this.customWidget,
    this.padding,this.height=50,this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Container(
          
          height: height,
         decoration: BoxDecoration(
         // gradient: ColorConstants.customGradient,
           color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius??10),
            
         ),
          
         
        
          padding: padding,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(icon!=null)Icon(icon,color: iconColor??ColorConstants.secondary,),
                if(customWidget!=null)customWidget!,
              if(text!=null)  Text(
                  text??"",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "PlayFair",
                    letterSpacing: 1.5,
                  
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
