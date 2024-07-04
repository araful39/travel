import 'package:flutter/material.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class SocialMedia extends StatelessWidget {
  final VoidCallback onPressFacebook;
  final VoidCallback onPressInstagram;
  final VoidCallback onPressTwiter;
  const SocialMedia({
    super.key, required this.onPressFacebook, required this.onPressInstagram, required this.onPressTwiter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            onTap: onPressFacebook,

            child: Image.asset(RIcons.facebook)),
        const SizedBox(
          width: RSizes.md,
        ),
        InkWell(

            onTap: onPressInstagram,
            child: Image.asset(RIcons.instagram)),
        const SizedBox(
          width: RSizes.md,
        ),
        InkWell(
            onTap: onPressTwiter,
            child: Image.asset(RIcons.twiter)),
      ],
    );
  }
}