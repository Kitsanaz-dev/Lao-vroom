import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class BrandsListview extends StatelessWidget {
  const BrandsListview({super.key});

  @override
  Widget build(BuildContext context) {
    
    // List of image assets or network URLs
    final List<String> brandImages = [
      'assets/images/brands/honda.png',
      'assets/images/brands/toyota.png',
      'assets/images/brands/benz.png',
      'assets/images/brands/kia.png',
      'assets/images/brands/audi.png'
    ];

    return SizedBox(
      height: 92,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brandImages.length,
        itemBuilder: (context, index) {
          // final imgAsset;
          return SizedBox(
            width: 82,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    log("Brands clicked");
                  },
                  child: CircleAvatar(
                    radius: 34,
                    //How to insert an image in a circle to match the circle Avatar assignment
                    backgroundImage: AssetImage(
                      brandImages[index],
                    ),
                    backgroundColor: context.color.hint,
                  
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
