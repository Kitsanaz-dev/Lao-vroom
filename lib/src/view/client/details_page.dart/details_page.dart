import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/widget/car_features_list.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/widget/rating.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/widget/rent_now_button_confirm.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.carData,
  });

  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          S.current.details,
          style: TextStyle(
            color: context.color.text,
            fontSize: context.typo.headline4.fontSize,
            fontWeight: context.typo.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Colors.black,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Car Image with left and right arrows
            Image.asset(
              carData['img'], // Replace with your car image asset
              height: 200,
            ),

            const SizedBox(height: 24),

            // Rating
            const Rating(),
            const Divider(height: 24),

            // Tags
            // const Wrap(
            //   spacing: 6,
            //   children: [
            //     Chip(label: Text("Mercedes")),
            //     Chip(label: Text("SUVs")),
            //     Chip(label: Text("Fuel")),
            //   ],
            // ),

            // const SizedBox(height: 16),

            // Car Title and Price
            Text(
              carData['name'],
              style: context.typo.headline3.copyWith(
                fontWeight: context.typo.extrabold,
                color: context.color.subtext,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "\$${carData['priceperday']}/day",
              style: context.typo.subtitle1.copyWith(
                fontWeight: context.typo.extrabold,
                color: context.color.primary,
              ),
            ),

            const SizedBox(height: 6),

            // Features (Automatic, People capacity, Fuel type)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Gear
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/cargear.png',
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      carData['gear'],
                      style: context.typo.body3.copyWith(
                        fontWeight: context.typo.medium,
                        color: context.color.text,
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 18),

                //Seat
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/2user.svg',
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      carData['seat'] + " seats",
                      style: context.typo.body3.copyWith(
                        fontWeight: context.typo.medium,
                        color: context.color.text,
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 18),

                //Fuel
                Row(
                  children: [
                    Icon(
                      Icons.local_gas_station,
                      size: 18,
                      color: context.color.text,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      carData['fuel'],
                      style: context.typo.body3.copyWith(
                        fontWeight: context.typo.medium,
                        color: context.color.text,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(height: 24),
            const SizedBox(height: 12),

            // Car Features List
            const CarFeaturesList(),
            const SizedBox(height: 110),

            //Rent now button
            RentNowButtonConfirm(
              carData: carData,
            ),
          ],
        ),
      ),
    );
  }
}
