import 'package:flutter/material.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/utills/constants/text.dart';

class CustomHeading extends StatelessWidget {
  final String title;
  final bool subTittleButton;
  final VoidCallback? onPress;
  const CustomHeading({
    super.key, required this.title, required this.subTittleButton, this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subTittleButton?  CustomTextButton(buttonName: RTexts.viewAll, onPress: onPress  ):const SizedBox(),
          ],
        ),
      ),
    );
  }
}