import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class StoreTicker extends StatelessWidget {
  const StoreTicker({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: const [
          Text('Shop',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(width: 4),
          Icon(Icons.check,size: 10,color: Colors.green,),
        ],
      ),
    );
  }
}