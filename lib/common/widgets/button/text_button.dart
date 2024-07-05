import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback? onPress;
  final Color? color;
  const CustomTextButton({
    super.key, required this.buttonName, required this.onPress, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPress, child: Text(buttonName,style: TextStyle(color: color?? Colors.blue),));
  }
}