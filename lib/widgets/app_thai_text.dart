import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppThaiText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   AppThaiText ({Key? key, 
   this.size=36,
    required this.text, 
    this.color=Colors.black})
    :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(color:color,
      fontSize: size,
       fontFamily: 'IBMPlexSansThai',
     
      fontWeight: FontWeight.w900 ),
    );
  }
}