import 'package:flutter/material.dart';
import 'package:gcu_menu_app/color.dart';

class WifiButton extends StatelessWidget {
  const WifiButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: SizedBox(
                height: 342,
                child: Column(
                  children: [
                    const Text(
                      'QR 코드를 찍어주세요!',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      '자동으로 WIFI에 연결됩니다',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/img/saeyoungdong-qrcode.png'),
                  ],
                ),
              ), // 이미지 경로를 추가하세요
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      '닫기',
                      style: TextStyle(fontSize: 20, color: Paint.brandColor),
                    )),
              ],
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(53, 53, 53, 0.1),
              offset: Offset(0, 4),
              blurRadius: 20,
            ),
          ],
        ),
        child: const Text(
          'WIFI',
          style: TextStyle(
            fontSize: 20,
            color: Paint.brandColor,
          ),
        ),
      ),
    );
  }
}
