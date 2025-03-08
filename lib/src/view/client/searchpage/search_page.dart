import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/search_service.dart';
import 'package:provider/provider.dart';
import 'package:lao_vroom/src/view/client/homepage/widget/car_card.dart';
import 'package:lao_vroom/src/view/client/homepage/widget/car_empty.dart';
import 'package:lao_vroom/src/view/client/searchpage/widget/custom_app_bar.dart';
import 'package:lao_vroom/theme/component/hide_keyboard.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SearchService(),
      child: HideKeyboard(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Consumer<SearchService>(
              builder: (context, provider, _) {
                return CustomAppBar(
                  textController: provider.textController,
                  onSearchIconPressed: provider.applyFilter,
                  onChanged: (text) => provider.applyFilter(),
                  onSubmited: (text) => provider.applyFilter(),
                  onClear: provider.clearText,
                );
              },
            ),
          ),
          body: Consumer<SearchService>(
            builder: (context, provider, _) {
              return provider.filteredCarDataList.isEmpty
                  ? const CarEmpty()
                  : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: ListView.builder(
                          itemCount: provider.filteredCarDataList.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return CarCard(
                              carData: provider.filteredCarDataList[index],
                            );
                          },
                        ),
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
