import 'package:flutter/material.dart';
import 'package:gcu_menu_app/view/eng/eng_detail.dart';
import 'package:gcu_menu_app/view/eng/eng_home.dart';
import 'package:gcu_menu_app/view/eng/eng_onboarding.dart';
import 'package:gcu_menu_app/view/kor/onboarding.dart';
import 'package:gcu_menu_app/view/kor/home.dart';
import 'package:gcu_menu_app/view/kor/detail.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '우리가게메뉴판',
      theme: ThemeData(fontFamily: 'ChosunCentennial'),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(name: '/', page: () => Onboarding()),
        GetPage(
            name: '/home',
            page: () => Home(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 500)),

        //여기서부터 영어페이지
        GetPage(
          name: '/eng',
          page: () => EngOnboarding(),
          transition: Transition.fade,
        ),
        GetPage(name: '/eng_home', page: () => EngHome()),
      ],
    );
  }
}
