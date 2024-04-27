import 'package:flutter/material.dart';
import 'package:gcu_menu_app/color.dart';

class OriginButton extends StatelessWidget {
  const OriginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: SizedBox(
                height: 800,
                child: Column(
                  children: [
                    const Text(
                      '원산지 표기',
                      style: TextStyle(fontSize: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DataTable(columns: const [
                      DataColumn(
                          label: Text(
                        '품목명',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '음식명',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        '원산지',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                    ], rows: const [
                      DataRow(cells: [
                        DataCell(Text(
                          '소고기',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '생갈비',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 한우',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '갈비살',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 한우',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '특양',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 한우',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '육회',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 한우',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '육개장',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 한우',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '해장국',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 한우',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '돼지고기',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '돼지갈비',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '생삼겹살',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '"',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '김치찌개',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '쌀',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '밥',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '콩',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '두부',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산,외국산(중국,미국)',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '배추',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '김치',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산(직접 김장)',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          '고추가루',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                        DataCell(Text(
                          '국내산 + 중국산',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                      ])
                    ])
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
          '원산지 표시',
          style: TextStyle(
            fontSize: 20,
            color: Paint.brandColor,
          ),
        ),
      ),
    );
  }
}
