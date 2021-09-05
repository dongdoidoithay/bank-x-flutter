import 'package:application/app/bindings/HomeBinding.dart';
import 'package:application/app/bindings/Loginbinding.dart';
import 'package:application/app/bindings/TranferBinding.dart';
import 'package:application/app/bindings/TranferInBinding.dart';
import 'package:application/app/screens/flash/flash_screen.dart';
import 'package:application/app/screens/home/home_screen.dart';
import 'package:application/app/screens/login/login_screen.dart';
import 'package:application/app/screens/tranfer/tranfer_screen.dart';
import 'package:application/app/screens/tranferin/tranferin_screen.dart';
import 'package:get/get.dart';

import 'app_routers.dart';
//import 'package:application/share/routers/app_routers.dart';

class AppPages extends Routes {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => FlashScreen(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.TRANFER,
      page: () => TranferScreen(),
      binding: TranferBinding(),
    ),
    GetPage(
      name: Routes.TRANFERIN,
      page: () => TranferInScreen(),
      binding: TranferInBinding(),
    ),
  ];
}
