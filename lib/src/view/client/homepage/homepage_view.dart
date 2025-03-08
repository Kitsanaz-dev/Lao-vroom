import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/homepage/widget/brands_listview.dart';
import 'package:lao_vroom/src/view/client/homepage/widget/car_card.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key,});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  List<Map<String, dynamic>> carDataList = [];
  @override
  void initState() {
    super.initState();
    loadCarData();
  }
  Future<void> loadCarData() async {
    final String response =
        await rootBundle.loadString('assets/data/car_data.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      carDataList = List<Map<String, dynamic>>.from(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: context.color.inactiveContainer,
        centerTitle: true,
        title: Text(
          S.current.appname,
          style: context.typo.headline3.copyWith(
            fontWeight: context.typo.extrabold,
            color: context.color.text,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),

              //Brands
              child: Row(
                children: [
                  Text(
                    S.current.brands,
                    style: context.typo.headline4.copyWith(
                      fontWeight: context.typo.bold,
                      color: context.color.subtext,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    child: Text(
                      S.current.seeall,
                      style: context.typo.body1.copyWith(
                        fontWeight: context.typo.bold,
                        color: context.color.primary,
                      ),
                    ),
                    onPressed: () {
                      log("See all Clicked");
                    },
                  ),
                ],
              ),
            ),

            //ListView builder of Brands
            const BrandsListview(),

            //Featured
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Text(
                    S.current.featured,
                    style: context.typo.headline4.copyWith(
                      fontWeight: context.typo.bold,
                      color: context.color.subtext,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    child: Text(
                      S.current.seeall,
                      style: context.typo.body1.copyWith(
                        fontWeight: context.typo.bold,
                        color: context.color.primary,
                      ),
                    ),
                    onPressed: () {
                      log("See all Clicked");
                    },
                  ),
                ],
              ),
            ),
            
            //Card
            
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: ListView.builder(
                itemCount: carDataList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CarCard(
                    carData: carDataList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
