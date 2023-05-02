import 'package:demoflutter1/misc/colors.dart';
import 'package:demoflutter1/widgets/app_text_normal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: AppColor.mainColor),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
      Icon(
        
        Icons.arrow_right,
        color: Colors.white,
        size: 20.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
      Icon(
        Icons.arrow_right,
        color: Colors.white,
        size: 20.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
      Icon(
        Icons.arrow_right,
        color: Colors.white,
        size: 20.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    
      ],
        ),
      ),
    );
  }
}
