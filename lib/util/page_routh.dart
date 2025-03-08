// import 'package:flutter/material.dart';
// import 'package:lao_vroom/src/model/car_model.dart';
// import 'package:lao_vroom/src/view/client/homepage/homepage_view.dart';

// abstract class RoutePath {
//   static const String shopping = 'shopping';
//   static const String product = 'product';
//   static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
//     late final Widget page;
//     switch (settings.name) {
//       case RoutePath.shopping:
//         page = HomepageView();
//         break;
//       case RoutePath.product:
//         Car car = settings.arguments as Car;
//         page = HomepageView(car: car);
//         break;
//     }
//     return MaterialPageRoute(
//       builder: (context) => page,
//     );
//   }
// }
