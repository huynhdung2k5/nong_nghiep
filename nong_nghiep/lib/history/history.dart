import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class History extends StatelessWidget {
  const History({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('lịch sử'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            itemHistory(),
            itemHistory(),
            itemHistory(),
            itemHistory(),
            itemHistory(),
          ],
        ),
      ),
    );
  }
}

Widget itemHistory() => Container(
  child: ListTile(
    leading: Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(50)
      ),
    ),
    title: const Text('Bạn đã mua phân bón  Trùn quế Vrat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    subtitle: Row(
      children: [
        Text('9:30  am',style: TextStyle(fontSize: 12)),
        Text('09/12/2021',style: TextStyle(fontSize: 12)),
      ],
    ),
  ),
);