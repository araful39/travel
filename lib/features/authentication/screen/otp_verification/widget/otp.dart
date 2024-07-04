import 'package:flutter/material.dart';

class OtpCodeField extends StatelessWidget {
  final String otp;
  const OtpCodeField({
    super.key, required this.otp,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Card(
        child: Center(child: Text(otp,style: const TextStyle(fontSize: 20),)),
      ),
    );
  }
}
