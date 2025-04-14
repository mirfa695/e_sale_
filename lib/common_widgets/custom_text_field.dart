import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
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
    this.borderRadius,
    this.value
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
  final String? value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: icon,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
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
         focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2.0),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
      ),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      cursorColor:Colors.black);
  }
}
