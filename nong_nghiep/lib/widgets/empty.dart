import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  final String message;
  const Empty({ Key? key ,this.message = 'Không có kết quả phù hợp'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}