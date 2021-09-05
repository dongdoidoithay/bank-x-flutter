import 'package:application/app/screens/home/home_screen.dart';
import 'package:application/app/screens/login/login_screen.dart';
import 'package:application/share/routers/app_pages.dart';
import 'package:application/share/routers/app_routers.dart';
import 'package:application/share/theme/app_theme.dart';
import 'package:application/share/translations/app_translations.dart';
import 'package:application/share/utils/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
//import 'package:graphql_flutter/graphql_flutter.dart';
//import 'package:http/http.dart';

import 'app/bindings/HomeBinding.dart';
import 'app/bindings/Loginbinding.dart';
import 'app/screens/flash/flash_screen.dart';

Future<void> main() async {
  //await initHiveForFlutter();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.primary.withOpacity(1),
  ));
  //set info

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: HomeBinding(),
    initialRoute: Routes.LOGIN,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: LoginScreen(),
    locale: Locale('vi', 'VN'),
    translationsKeys: AppTranslation.translations,
    //translations: FuncAppTranslations(),
  ));
}
