import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  final Color? suffixColor;
  const CustomTextField({
    super.key, required this.hintText, this.suffixIcon, this.suffixColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10,top: 15),
      child: TextField(
        decoration: InputDecoration(
          filled: true,


          hintText: hintText,
          suffixIcon: Icon(suffixIcon,color: suffixColor,),
          fillColor: Colors.grey.shade100,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.09)),
          ),
          focusedBorder:OutlineInputBorder(

            borderSide: BorderSide(color: Colors.black.withOpacity(0.09)),
            borderRadius: BorderRadius.circular(10.0),
          ),

        ),),
    );
  }
}