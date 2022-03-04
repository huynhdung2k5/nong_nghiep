import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  final int temp;
  final double size;
  final Color color;
  const Temp(this.temp, {Key? key, this.size = 14, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$temp',
          style: TextStyle(
            fontSize: size,
            color: color,
          ),
        ),
        Text(
          'o',
          style: TextStyle(
            fontSize: size / 2,
            color: color,
          ),
        ),
      ],
    );
  }
}
