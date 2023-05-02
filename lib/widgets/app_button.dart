import 'package:demoflutter1/widgets/app_text_normal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool isIcon;
   AppButtons({Key? key, 
   this.text="1",
   this.icon,
  required this.size,
  required this.color, 
  required this.backgroundColor, 
  required this.borderColor,
  this.isIcon=false,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,

      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width:1.0
        ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
          child: isIcon==false?Center(child: AppNormalText(text: text!,color:color)):Center(child: Icon(icon,color: color,)),
          
    );
  }
}
