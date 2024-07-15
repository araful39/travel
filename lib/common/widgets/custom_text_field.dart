import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final bool? prefixIcons;
  final VoidCallback? onPressSuffix;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.suffixColor,
    this.prefixIcons, this.onPressSuffix, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(

        filled: true,
        prefixIcon: prefixIcons != null
            ? const Icon(
                Icons.search,
                color: RColores.black,
              )
            : null,
        hintText: hintText,
        suffixIcon: InkWell(
          onTap: onPressSuffix,
          child: Icon(
            suffixIcon,
            color: suffixColor,
            size: 35,
          ),
        ),
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.09)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.09)),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
