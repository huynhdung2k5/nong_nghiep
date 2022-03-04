import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Tìm kiếm',
          style: TextStyle(fontSize: 24),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(16),
            child: InkWell(
              onTap: () => Get.toNamed('qrcode'),
              child: Image(image: AssetImage('assets/icons/QR.png'),width: 27,color: Colors.white,),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: Get.width * (2 / 3),
                  child: TextField(
                    autofocus: true,
                    scrollPadding: EdgeInsets.all(8),
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'tìm kiếm...',
                      contentPadding: EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      isDense: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  width: Get.width * (1 / 3) - 35,
                  decoration: BoxDecoration(color: mainColor),
                  child: Text(
                    'tìm kiếm',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text('xu hướng tìm kiếm: '),
                Expanded(
                  child: Text(
                    'phân bón, thuốc phun trừ sâu, hạt giống, cây trồng...',
                    style: TextStyle(color: mainColor),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Text('Tìm gần đây',style: TextStyle(fontSize: 18),),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('phân bón',style: TextStyle(fontSize: 14),),
                  Icon(Icons.close,size: 13,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('phân bón',style: TextStyle(fontSize: 14),),
                  Icon(Icons.close,size: 13,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('phân bón',style: TextStyle(fontSize: 14),),
                  Icon(Icons.close,size: 13,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('phân bón',style: TextStyle(fontSize: 14),),
                  Icon(Icons.close,size: 13,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
