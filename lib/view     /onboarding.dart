import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
              child:
              Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/logos/OnboardingLogo.svg",
                      width: 500,
                  ),

                  CupertinoButton(child:
                      Text('go home'),
                      onPressed: () {
                    Get.offNamed('/home');
                  }
                  )
                ]
              ),)
          );
  }
}
