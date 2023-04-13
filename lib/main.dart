import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:iskoutreach/src/controller/url_controller.dart';
import 'package:iskoutreach/src/view/Homepage/home_page.dart';
import 'src/Splash Screen/splash_screen.dart';
import 'src/controller/color_controller.dart';
import 'src/controller/theme_controller.dart';
import 'src/controller/theme_mode_controller.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(
        EasyLocalization(
          supportedLocales: [Locale('en', 'US'), Locale('ms', 'MY')],
          path: 'assets/locales',
          fallbackLocale: Locale('ms', 'MY'),
          startLocale: Locale('en', 'US'),
          assetLoader: JsonAssetLoader(),
          saveLocale: true,

          child: IskApp(),
        )
      );
    }
  );
}

class IskApp extends StatelessWidget {
  const IskApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: UniqueKey(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
      routes: {
        '/MainPage': (context) => MainPage(),
      },
      theme: Themes.lightTheme,
      darkTheme: Themes.datkTheme,
      themeMode: ThemeController.theme,
      debugShowCheckedModeBanner: false,

    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color mainColor = const Color.fromARGB(255, 123, 0, 245);

  @override
  void initState() {
    super.initState();
    ColorController.getColor();
    themeModeController.getThemeStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: HomePage(),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed:() {
            launchRegisterUrl();
          },
          label: Text('Daftar Sekarang', style: TextStyle(color: Colors.white),),
          icon: Icon(FontAwesome5.arrow_circle_up,color: Colors.white),
          backgroundColor: Colors.indigo.shade600,
        ),
      );
  }
}
