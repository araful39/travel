import 'package:flutter/material.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/features/shop/screen/Favorite_places/widget/custom_favorite_cart.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
          centerTitle: true,
          actions: const [
            Text("Cancel",style: TextStyle(color: RColores.splashColor,fontWeight: FontWeight.bold),),
            SizedBox(
              width: RSizes.md,
            )
          ],
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(hintText: "Search Places",prefixIcons: true,suffixIcon: Icons.mic,),
              const Text(
                "Search",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    // primary: true,
                      itemCount: 15,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 15, crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CustomFavoriteCart(imagePath: RImages.trip1, location: RTexts.sunamganj, resortName: RTexts.sunamganjResort,),
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$59/",
                                    style: TextStyle(
                                        color: RColores.splashColor,
                                        fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Text(
                                      "Person",

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
