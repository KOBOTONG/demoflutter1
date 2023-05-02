import 'package:demoflutter1/misc/colors.dart';
import 'package:demoflutter1/widgets/app_button.dart';
import 'package:demoflutter1/widgets/app_large_text.dart';
import 'package:demoflutter1/widgets/app_text.dart';
import 'package:demoflutter1/widgets/app_text_normal.dart';
import 'package:demoflutter1/widgets/app_thai_text.dart';
import 'package:demoflutter1/widgets/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  int selectedIndex = -1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/pexels-henry-&-co-1187313.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 280,
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppThaiText(text: "รายละเอียดการจอง", size: 24),
                        AppThaiText(text: "1200/เดือน", size: 24)
                      ],
                    ),
                    SizedBox(height: 20),
                    AppNormalText(text: "กรุณาเลือกเดือน"),
                    SizedBox(height: 20),
                    Wrap(
                      children: List.generate(3, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: AppButtons(
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColor.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColor.buttonBackground,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              size: 50,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),
                    AppNormalText(text: "กรุณาใส่หมายเลขทะเบียนรถ"),
                    SizedBox(height: 20),
                    Positioned(
                      child: Container(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.card_membership),
                            hintText: 'หมายเลขทะเบียนรถ',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppButtons(
                              size: 60,
                              color: AppColor.textColor01,
                              backgroundColor: Colors.white,
                              borderColor: AppColor.textColor01,
                              isIcon: true,
                              icon: Icons.arrow_back_ios,
                            ),
                            Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.mainColor),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AppNormalText(
                                    text: "ยืนยันการจอง",
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
