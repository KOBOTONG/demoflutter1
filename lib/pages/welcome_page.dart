import 'package:demoflutter1/misc/colors.dart';
import 'package:demoflutter1/widgets/responsive_button.dart';
import 'package:demoflutter1/widgets/app_large_text.dart';
import 'package:demoflutter1/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../widgets/app_text_normal.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "Carpool-bro.png",
    "welcomeone.png",
    "welcomethree.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/" + images[index]),
                  alignment: Alignment.bottomCenter,
                  scale: 0.5,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 90),
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                     
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "SafeSpace"),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: 250,
                          child: AppNormalText(
                              text:
                                  "หมดกังวลเรื่องสถานที่จอดรถด้วยบริการที่จอดรถรายเดือน ปลอดภัย รวดเร็ว"),
                        ),
                        SizedBox(height: 10),
                        ResponsiveButton()
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots?25:8,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                          color:  index==indexDots?AppColor.mainColor:AppColor.mainColor.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
              
            );
          }),
    );
  }
}

class _ {}
