import 'package:flutter/material.dart';
import 'package:travel/features/shop/screen/Favorite_places/widget/custom_favorite_cart.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/text.dart';

class FavoritePlaces extends StatelessWidget {
  const FavoritePlaces({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("Favorite Places"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Favorite Places",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  // primary: true,
                  itemCount: 15,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const CustomFavoriteCart(imagePath: RImages.trip1, location: RTexts.sunamganj, resortName: RTexts.sunamganjResort,);
                  }),
            ),
          )
        ],
      ),
    );
  }
}


