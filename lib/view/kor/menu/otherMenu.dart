import 'package:flutter/material.dart';

class OtherGridView extends StatelessWidget {
  final List<dynamic> otherItems;

  const OtherGridView({Key? key, required this.otherItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: otherItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            debugPrint('버튼이 눌렸습니다.');
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(otherItems[index]['title']),
                  content: Text(otherItems[index]['detail']),
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
                    otherItems[index]['imagePath'],
                    fit: BoxFit.fitWidth,
                    height: 200,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      otherItems[index]['title'],
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const Text(' - '),
                    Text(
                      otherItems[index]['price'],
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
    );
  }
}
