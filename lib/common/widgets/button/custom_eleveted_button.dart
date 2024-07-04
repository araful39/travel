import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color? backgroundColor;
  final VoidCallback onPress;
  const CustomButton({
    super.key,
    required this.buttonName,
    this.backgroundColor,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 8),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                  backgroundColor: backgroundColor ?? RColores.buttonColor),
              onPressed: onPress,
              child: Text(
                buttonName,
                style: const TextStyle(color: RColores.white, fontSize: 20),
              )),
        ));
  }
}
