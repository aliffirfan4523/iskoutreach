import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/controller/url_controller.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'src/controller/theme_controller.dart';
import 'src/controller/theme_mode_controller.dart';
import 'src/model/homepage_model.dart';
import 'src/provider/homepage_provider.dart';
import 'src/view/CustomError.dart';
import 'src/view/home_page.dart';

void main() async {
  runApp(IskApp());
}

class IskApp extends StatelessWidget {
  const IskApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // builder: (context, child) => ResponsiveWrapper.builder(
      //   BouncingScrollWrapper.builder(context, child!),
      //   maxWidth: 1200,
      //   minWidth: 450,
      //   defaultScale: true,
      //   breakpoints: [
      //     const ResponsiveBreakpoint.resize(450, name: MOBILE),
      //     const ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //     const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //     const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //     const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //   ],

      // ),
      home: MainPage(),
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
    themeModeController.getThemeStatus();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageNotifier(currentPage: 0),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: HomePage(),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              print('test');
              launchWhatsapp();
            },
            label: const Text('Pertanyaan Lanjut?'),
            icon: const Icon(FontAwesome5.whatsapp),
            backgroundColor: Colors.indigo.shade600,
          ),
        );
        /*
        return SideMenu(
          key: sideMenuKey,
          menu: SideMenuPages(),
          type: SideMenuType.slideNRotate,
          child: SafeArea(
              child: current_pages[Provider.of<HomePageNotifier>(context).currentPage],
            ),
        )
        */
      },
    );
  }
}
