import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gcu_menu_app/color.dart';

class EngOnboarding extends StatelessWidget {
  const EngOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          CupertinoButton(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/logos/EngOnboardingLogo.svg",
                        width: 600,
                      ),
                      const SizedBox(height: 50),
                      const Text(
                        'Please touch screen',
                        style: TextStyle(
                          fontSize: 20,
                          color: Paint.brandColor, // 텍스트 색상 설정
                        ),
                      ),
                    ]),
              ),
              onPressed: () {
                Get.offNamed('/enghome');
              }),
          Positioned(
            bottom: 20,
            right: 20,
            child: CupertinoButton(
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
                    'for Korean',
                    style: TextStyle(
                      fontSize: 20,
                      color: Paint.brandColor,
                    ),
                  ),
                ),
                onPressed: () {
                  Get.offNamed('/');
                }),
          )
        ],
      ),
    );
  }
}
