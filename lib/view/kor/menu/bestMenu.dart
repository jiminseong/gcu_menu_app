import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:gcu_menu_app/color.dart';

class BestItemsSwiper extends StatelessWidget {
  final List<dynamic> bestItems;

  const BestItemsSwiper({Key? key, required this.bestItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Swiper(
        viewportFraction: 1,
        scale: 1,
        scrollDirection: Axis.horizontal,
        axisDirection: AxisDirection.left,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: SwiperPagination.dots,
        ),
        control: const SwiperControl(
          color: Colors.black12,
          disableColor: Colors.black12,
          size: 50.0, // 버튼 크기
        ),
        loop: false,
        autoplay: true,
        duration: 300,
        itemHeight: 400,
        itemCount: bestItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(bestItems[index]['title']),
                    content: Text(bestItems[index]['detail']),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Row(
              children: [
                Image.asset(
                  bestItems[index]['imagePath'],
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Paint.brandColor,
                    ),
                    height: 400,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          bestItems[index]['title'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          bestItems[index]['detail'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
