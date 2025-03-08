import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/homepage/widget/card_widget/details_button.dart';
import 'package:lao_vroom/src/view/client/homepage/widget/card_widget/rent_now_button.dart';
import 'package:lao_vroom/theme/component/fuel.dart';
import 'package:lao_vroom/theme/component/gear.dart';
import 'package:lao_vroom/theme/component/name.dart';
import 'package:lao_vroom/theme/component/rating.dart';
import 'package:lao_vroom/theme/component/seat.dart';

class CarCard extends StatelessWidget {
  final Map<String, dynamic> carData;
  const CarCard({
    super.key,
    required this.carData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.color.inactiveContainer,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Rating and Name
                    Row(
                      children: [
                        //Rating
                        Rating(
                          rate: carData['rate'],
                          carData: carData,
                        ),
                        const SizedBox(width: 4),
                        //Name
                        Name(
                          name: carData['name'],
                          carData: carData,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    //Gear
                    Gear(
                      gear: carData['gear'],
                      carData: carData,
                    ),
                    const SizedBox(height: 6),
                    //Seat
                    Seat(
                      seat: carData['seat'],
                      carData: carData,
                    ),
                    const SizedBox(height: 6),
                    //Fuel
                    Fuel(
                      fuel: carData['fuel'],
                      carData: carData,
                    ),
                  ],
                ),
                //image
                Expanded(
                  child: Image.asset(
                    carData['img'],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Spacer(),
                //Rent now button
                RentNowButton(
                  carData: carData,
                ),
                const SizedBox(width: 6),
                //Details button
                DetailsButton(
                  carData: carData,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
