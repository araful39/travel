import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.amount,
  });

  final String amount;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "\$ $amount/",
            style: const TextStyle(
                color: RColores.splashColor,
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Text(
              "Person",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}