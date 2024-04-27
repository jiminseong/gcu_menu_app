import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EngHome extends StatelessWidget {
  const EngHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
              child: Text('go onboarding'),
              onPressed: () {
                Get.offNamed('/');
              }),
          Text('첫번째 메뉴'),
          Text('첫번째 메뉴'),
          Text('첫번째 메뉴'),
          Text('첫번째 메뉴'),
          Text('첫번째 메뉴'),
          CupertinoButton(
              child: Text('go detail'),
              onPressed: () {
                Get.offNamed('/detail');
              }),
        ],
      ),
    ));
  }
}
