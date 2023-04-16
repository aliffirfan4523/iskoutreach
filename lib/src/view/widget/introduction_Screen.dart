import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:iskoutreach/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../Homepage/home_page.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (_) => Scaffold(
          body: SafeArea(child: IntroScreen()),
        ),
      );

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seen_intro', true); // save the seen_intro value as true
    Get.off(HomePage(),transition: Transition.fade); // navigate to the main page
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: IntroductionScreen(
        //key: introKey,
        next: const Icon(Icons.navigate_next),
        // showBackButton: true, ! showBack and showSkip can't be both be true.
        // back: const Icon(Icons.arrow_back),
        showSkipButton: true,
        skip: const Text('Skip'),
        dotsFlex: 3,
        onDone: () => _onIntroEnd(context),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
          activeColor: Theme.of(context).accentColor,
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        pages: [
          PageViewModel(
            //! The title/body can either be strings or widgets.
            titleWidget: Text("kAppIcon"),
            body: 'Welcome to the Flutter Catalog app!',
          ),
          PageViewModel(
            title: 'Examples',
            body:
                'You can find many examples here, browse them by category, bookmark your favorite ones!',
            image: Image.asset('screenshots/Screenshot_1541613187.png'),
          ),
          PageViewModel(
            title: 'Preview tab',
            body: 'Open and interact with the preview pages.',
            image: Image.asset('screenshots/Screenshot_1541613193.png'),
          ),
          PageViewModel(
            title: 'Code tab',
            body: "Open the source code tab to see how it's implemented.",
            image: Image.asset('screenshots/Screenshot_1541613197.png'),
          ),
          PageViewModel(
            title: 'Enjoy!',
            bodyWidget: Column(
              children: [
                Text('Explore the demos and learn Flutter anywhere as you go!\n'
                    'And you are more than welcome to contribute to this open-source app :)'),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.code),
                    title: Text('Source code on GitHub'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.bug_report),
                    title: const Text('Report issue on GitHub'),
                  ),
                ),
              ],
            ),
            image: Image.asset('res/images/dart-side.png'),
          ),
        ],
      ),
    );
  }
}