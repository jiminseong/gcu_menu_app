import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EngDetail1 extends StatelessWidget {
  const EngDetail1({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
              child: Text('go home'),
              onPressed: () {
                Get.offNamed('/home');
              }),
          Text('상세한 설명1'),
          Text('상세한 설명1'),
          Text('상세한 설명1'),
          Text('상세한 설명1'),
          Text('상세한 설명1'),
          CupertinoButton(
              child: Text('go onboading'),
              onPressed: () {
                Get.offNamed('/');
              }),
        ],
      ),
    ));
  }
}
