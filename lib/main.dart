import 'package:flutter/cupertino.dart';
import 'package:gcu_menu_app/view%20%20%20%20%20/onboarding.dart';
import 'package:gcu_menu_app/view     /home.dart';
import 'package:gcu_menu_app/view     /detail.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: '우리가게메뉴판',
      theme: CupertinoThemeData(
      ),
      initialRoute: '/',
     defaultTransition: Transition.cupertino,
           getPages: [
             GetPage(name: '/', page: () => Onboarding()),

             GetPage(name: '/home', page: ()=>Home(),
               transition: Transition.fade,
             transitionDuration: Duration(milliseconds: 500)),

             GetPage(name: '/detail', page: ()=>Detail1()),
           ],
    );
  }
}

