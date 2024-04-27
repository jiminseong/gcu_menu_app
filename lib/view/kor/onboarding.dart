import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Positioned(
            bottom: 20,
            right: 20,
            child: MaterialButton(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(53, 53, 53, 0.1),
                        // 그림자 색상
                        offset: Offset(0, 4),
                        // 그림자 위치 (가로, 세로)
                        blurRadius: 20, // 그림자 흐림 정도
                      ),
                    ],
                  ),
                  child: const Text(
                    'for English',
                    style: TextStyle(
                      fontSize: 20,
                      color: Paint.brandColor,
                    ),
                  ),
                ),
                onPressed: () {
                  Get.offNamed('/eng');
                }),
          )
        ],
      ),
    );
  }
}
