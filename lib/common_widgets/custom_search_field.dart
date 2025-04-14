import 'package:e_sale/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
    this.labelText,
    this.onChanged,
    this.hintText,
    this.width = double.infinity,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.icon,
    this.backgroundColor,
    this.borderRadius
  });

  final String? labelText;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? icon;
  final Color? backgroundColor;
  final int? maxLines;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextFormField(
        onChanged: onChanged,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          icon: icon,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorConstants.lightGreyColr),
          filled: true,
          fillColor:backgroundColor?? Colors.white,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
            top: maxLines! > 1 ? 16.0 : 12.0, // Adjust top padding for multiline
            bottom: 12.0,
            left: 15.0,
            right: 15.0,
          ),
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints(
            minWidth: 40,
            minHeight: maxLines! > 1 ? 60 : 20, // Adjust height for multiline
          ),
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??12.0),
            borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 12.0),
            borderSide: const BorderSide(color: Colors.black, width: 0.5),
          ),
        ),
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        cursorColor:Colors.black ),
    );
  }
}
