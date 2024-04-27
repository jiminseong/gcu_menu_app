import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gcu_menu_app/color.dart';
import 'dart:convert';
import 'package:card_swiper/card_swiper.dart';
import 'package:gcu_menu_app/view/kor/menu/bestMenu.dart';
import 'package:gcu_menu_app/view/kor/menu/meatbeafMenu.dart';
import 'package:gcu_menu_app/view/kor/menu/otherMenu.dart';
import 'package:gcu_menu_app/view/kor/menu/riceMenu.dart';

class Home extends StatelessWidget {
  final String jsonData = 'assets/data/menu_item.json';

  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(jsonData),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          // JSON 데이터 파싱
          Map<String, dynamic> data = json.decode(snapshot.data!);

          List<dynamic> bestItems = data['bestItems'];
          List<dynamic> meatbeefItems = data['meatbeefItems'];
          List<dynamic> riceItems = data['riceItems'];
          List<dynamic> otherItems = data['otherItems'];

          return Scaffold(
            body: Column(
              children: [
                Container(
                  width: 800,
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(53, 53, 53, 0.15),
                        offset: Offset(0, 4),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset("assets/logos/OnboardingLogo.svg",
                          width: 400, alignment: Alignment.center),
                      Container(
                        margin: const EdgeInsets.only(left: 100),
                        child: MaterialButton(
                            child: SvgPicture.asset(
                              "assets/icons/home.svg",
                              width: 34,
                            ),
                            onPressed: () {
                              Get.offNamed('/');
                            }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                BestItemsSwiper(bestItems: bestItems),
                Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: const Text(
                      '고기류',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: meatbeefItems.length,
                  itemBuilder: (context, index) {
                    return MeatBeefGridView(meatbeefItems: meatbeefItems);
                  },
                ),
                Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: const Text(
                      '식사류',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: riceItems.length,
                  itemBuilder: (context, index) {
                    return RiceGridView(riceItems: riceItems);
                  },
                ),
                Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: const Text(
                      '음료 및 주류',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: otherItems.length,
                  itemBuilder: (context, index) {
                    return OtherGridView(otherItems: otherItems);
                  },
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
