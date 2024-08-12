import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:iskoutreach/src/Splash%20Screen/splash_screen_animation.dart';
import 'package:iskoutreach/src/controller/url_controller.dart';
import 'package:iskoutreach/src/view/Homepage/home_page.dart';
import 'package:iskoutreach/src/view/widget/introduction_Screen.dart';
import 'src/Splash Screen/splash_screen.dart';
import 'src/controller/color_controller.dart';
import 'src/controller/theme_controller.dart';
import 'src/view/widget/side_drawer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(EasyLocalization(
      key: UniqueKey(),
      supportedLocales: [Locale('en', 'US'), Locale('ms', 'MY')],
      path: 'assets/locales',
      fallbackLocale: Locale('ms', 'MY'),
      startLocale: Locale('en', 'US'),
      assetLoader: JsonAssetLoader(),
      saveLocale: true,
      child: IskApp(),
    ));
  });
}

class IskApp extends StatelessWidget {
  IskApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: UniqueKey(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: HomePage(),
      routes: {
        '/HomePage': (context) => HomePage(),
        '/SplashScreenAnimation': (context) => SplashScreenAnimation(),
      },
      theme: Themes.lightTheme,
      darkTheme: Themes.datkTheme,
      themeMode: ThemeController.theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
