import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MenuItem {
  final String text;
  RxBool checked = false.obs;
  MenuItem({required this.text});
}


class ShowDialog extends StatelessWidget {
  const ShowDialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('dialog'),
    );
  }
}