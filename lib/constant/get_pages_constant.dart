import 'package:api_getx/constant/route_constant.dart';
import 'package:api_getx/ui/binding/home_binding.dart';
import 'package:api_getx/ui/view/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.homeScreen,
      page: () =>  HomeScreen(),
      middlewares:  [
        // Add here
        // AuthGuard(),
      ],
      binding: HomeScreenBinding()),
];