import 'package:flutter/material.dart';
import 'package:gcu_menu_app/color.dart';

class RiceGridView extends StatelessWidget {
  final List<dynamic> riceItems;

  const RiceGridView({Key? key, required this.riceItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: riceItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint('버튼이 눌렸습니다.');
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(riceItems[index]['title']),
                    content: Text(riceItems[index]['detail']),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            '닫기',
                            style: TextStyle(
                                fontSize: 20, color: Paint.brandColor),
                          )),
                    ],
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(53, 53, 53, 0.1),
                    offset: Offset(0, 4),
                    blurRadius: 20,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      riceItems[index]['imagePath'],
                      fit: BoxFit.fitWidth,
                      height: 200,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        riceItems[index]['title'],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const Text(' - '),
                      Text(
                        riceItems[index]['price'],
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
