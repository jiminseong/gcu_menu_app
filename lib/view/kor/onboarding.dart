import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gcu_menu_app/view/button/engButton.dart';
import 'package:gcu_menu_app/view/button/wifiButton.dart';
import 'package:gcu_menu_app/view/button/originButton.dart';
import 'package:get/get.dart';
import 'package:gcu_menu_app/color.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MaterialButton(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/logos/OnboardingLogo.svg",
                        width: 600,
                      ),
                      const SizedBox(height: 50),
                      const Text(
                        '화면을 터치해주세요!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Paint.brandColor, // 텍스트 색상 설정
                        ),
                      ),
                    ]),
              ),
              onPressed: () {
                Get.offNamed('/home');
              }),
          const Positioned(
            bottom: 20,
            right: 20,
            child: EngButton(),
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            child: WifiButton(),
          ),
          const Positioned(
            top: 20,
            left: 20,
            child: OriginButton(),
          )
        ],
      ),
    );
  }
}
