import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Scientist extends StatelessWidget {
  const Scientist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('Nhà khoa học'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 64,
            crossAxisSpacing: 32,
            childAspectRatio: 1,
          ),
          children: [
            itemScientist(
              'assets/images/scientist.png', 
              'PGS. Tiến sĩ', 
              'nguyễn văn A'
            ),
            itemScientist(
              'assets/images/scientist.png', 
              'PGS. Tiến sĩ', 
              'nguyễn văn B'
            ),
            itemScientist(
              'assets/images/scientist.png', 
              'PGS. Tiến sĩ', 
              'nguyễn văn C'
            ),
            itemScientist(
              'assets/images/scientist.png', 
              'PGS. Tiến sĩ', 
              'nguyễn văn D'
            ),
            itemScientist(
              'assets/images/scientist.png', 
              'PGS. Tiến sĩ', 
              'nguyễn văn E'
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemScientist(String imageUrl, String title, String name) => Container(
  child: Column(
    children: [
      Image(image: AssetImage(imageUrl),width: 100,),
      Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Text(title,style: const TextStyle(fontSize: 24)),
      ),
      Text(name,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
    ],
  ),
);