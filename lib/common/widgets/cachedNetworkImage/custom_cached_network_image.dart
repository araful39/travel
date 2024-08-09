import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel/utills/constants/images.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.boxFit, this.width,

  });

  final String imageUrl;
  final double? height;
  final BoxFit? boxFit;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) {
        return const Center(child: CircularProgressIndicator());
      },
      errorWidget: (context, url, error) => Image.asset(
        RImages.sreemangal,
        height: height ?? 220,
        fit: BoxFit.fill,
      ),
      imageUrl: imageUrl,
      width: width,
      height: height ?? 220,
      fit: boxFit ?? BoxFit.fitHeight,
    );
  }
}
