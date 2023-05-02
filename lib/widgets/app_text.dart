import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText(String s, 
      {Key? key, this.size = 16, required this.text, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'IBMPlexSansThai',
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}
