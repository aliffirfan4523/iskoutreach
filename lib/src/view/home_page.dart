import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iskoutreach/src/view/senarai_kursus_view.dart';
import 'package:iskoutreach/src/view/tempoh_pengajian.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../controller/theme_controller.dart';
import '../controller/theme_mode_controller.dart';
import '../model/text_model.dart';
import 'name_card/name_card.dart';
import 'pengiktirafan_view.dart';

final _isLightTheme = themeModeController.isLightTheme;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    IconData thememodeIcon =
        _isLightTheme.value ? Icons.light_mode : Icons.dark_mode;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF0075FF),
                          Color(0xFF035671),
                        ]),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                  	mainAxisSize: MainAxisSize.max,
      						  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          //image logo
                            Image.asset(
                              "images/logo.png",
                              width: 130,
                              height: 60,
                            ),
                            //theme button
                            Stack(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                ),
                                IconButton(
                                  icon: Icon(thememodeIcon, color: Colors.white),
                                  onPressed :()=>toggleTheme(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        pause: const Duration(seconds: 3),
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Selamat Datang Ke \nISK Outreach',
                            textAlign: TextAlign.center,
                            speed: const Duration(milliseconds: 50),
                            textStyle: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ],
                  ),
                ),
                RoundShapeBackground(
                  top: 91,
                  right: -70,
                  size: 200,
                ),
                RoundShapeBackground(
                  top: -127,
                  right: 10,
                  size: 200,
                ),
                RoundShapeBackground(
                  top: -50,
                  left: -50,
                  size: 150,
                ),
                RoundShapeBackground(
                  top: 135,
                  left: -70,
                  size: 200,
                ),
                const Positioned(
                  top: 220,
                  right: 20,
                  left: 20,
                  child: MenuButton(),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
              ],
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0075FF),
                    Color(0xFF035671),
                  ]),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5, bottom: 30),
                  child: Text(
                  	sejaraIsk,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),

                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
   void toggleTheme(){
    if (_isLightTheme.value == true) {
      _isLightTheme.value = false;
      } else {
        _isLightTheme.value = true;
      }
      setState(() {
        ThemeController.changeThemeMode =
        _isLightTheme.value;
        });
      print(_isLightTheme.value);
      Get.changeThemeMode(
        _isLightTheme.value
        ? ThemeMode.light
        : ThemeMode.dark,
        );
      themeModeController.saveThemeStatus();
    }
}

class RoundShapeBackground extends StatelessWidget {
  RoundShapeBackground({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.size,
  }) : super(key: key);

  double? top;
  double? left;
  double? right;
  double? bottom;
  double? size = 150;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(300),
          backgroundBlendMode: BlendMode.color,
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xBF00FFF0),
                Color(0xBF000000),
              ]),
        ),
      ),
    );
  }
}

class MenuButton extends StatefulWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 3, // blur radius
            offset: const Offset(0, 2), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
        ],
        color: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //tempoh pengajian
              IconTextButton(
                context: context,
                icon: Icons.calendar_view_month_rounded,
                text: "Tempoh \nPengajian",
                location: const TempohPengajian(),
              ),
              //senarai kursus yang ditawarkan
              IconTextButton(
                context: context,
                icon: Icons.subject_rounded,
                text: "Senarai Kursus \nDitawarkan",
                location: const SenaraiKursus(),
              ),
              //pengiktirafan
              IconTextButton(
                context: context,
                icon: FontAwesomeIcons.award,
                text: "Pengiktirafan",
                location: const Pengiktirafan(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            	//senarai pensyarah
              IconTextButton(
                context: context,
                icon: Icons.person_rounded,
                text: "Senarai Pensyarah",
                location: NameCard(),
              ),
              //kod pemakaian
              IconTextButton(
                context: context,
                icon: FontAwesome5.tshirt,
                text: "Etika Pemakaian",
                location: NameCard(),
              ),
              
              IconTextButton(
                context: context,
                icon: FontAwesome5.question_circle,
                text: "Syarat Permohonan",
                location: MyCardList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget IconTextButton({
  required BuildContext context,
  required IconData icon,
  required String text,
  required Widget location,
}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => location),
      );
      print("Button Tapped $text");
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, size: 20),
          Text(
          	text,
            style: const TextStyle(
              fontSize: 11,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}


