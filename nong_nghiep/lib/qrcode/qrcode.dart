import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class QRCode extends StatelessWidget {
  const QRCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc4c4c4),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('TRA CỨU'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 64),
              width: 324,
              height: 324,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Image(image: AssetImage('assets/icons/QR.png'),),
            ),
            ElevatedButton(
              onPressed: (){}, 
              child: Text('QUÉT',style: const TextStyle(fontSize: 24)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                minimumSize: MaterialStateProperty.all<Size>(const Size(324, 50))
              ),
            )
          ],
        ),
      ),
    );
  }
}