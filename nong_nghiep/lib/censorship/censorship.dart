import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Censorship extends StatelessWidget {
  const Censorship({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Kiểm định - Kiểm Nghiệm'),
      ),
      body: Center(child: Text('kiem dinh'),),
    );
  }
}