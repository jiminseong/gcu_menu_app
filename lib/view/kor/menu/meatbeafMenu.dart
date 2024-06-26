import 'package:flutter/material.dart';
import 'package:gcu_menu_app/color.dart';

class MeatBeefGridView extends StatelessWidget {
  final List<dynamic> meatbeefItems;

  const MeatBeefGridView({Key? key, required this.meatbeefItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: meatbeefItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(meatbeefItems[index]['title']),
                    content: Text(meatbeefItems[index]['detail']),
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
                      meatbeefItems[index]['imagePath'],
                      fit: BoxFit.fitWidth,
                      height: 200,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        meatbeefItems[index]['title'],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const Text(' - '),
                      Text(
                        meatbeefItems[index]['price'],
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
