import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gcu_menu_app/color.dart';

class EngButton extends StatelessWidget {
  const EngButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Get.offNamed('/eng');
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
          'for English',
          style: TextStyle(
            fontSize: 20,
            color: Paint.brandColor,
          ),
        ),
      ),
    );
  }
}
