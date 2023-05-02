import 'package:demoflutter1/misc/colors.dart';
import 'package:demoflutter1/widgets/app_large_text.dart';
import 'package:demoflutter1/widgets/app_text.dart';
import 'package:demoflutter1/widgets/app_text_normal.dart';
import 'package:demoflutter1/widgets/app_thai_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images ={
    "pexels-alexander-tencio-1626851.jpg":"Alexander",
    "pexels-kamshotthat-3457780.jpg":"Kamshotthat",
    "Fran Labuschagne.png":"Labuschagne",
    "pexels-josh-sorenson-1054387.jpg":"sorenson"
  
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
     resizeToAvoidBottomInset:false ,
      body: SingleChildScrollView(
       
        reverse: true,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            /* welcome text */
            Container(
              margin: const EdgeInsets.only(right: 190),
              child: AppThaiText(text: "ยินดีต้อนรับ"),
            ),
            SizedBox(height: 5),
            /* tabbar */
            Container(
              margin: const EdgeInsets.only(right: 220, bottom: 5),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTabInicatro(color: AppColor.mainColor, radius: 4),
                tabs: [
                  AppNormalText(
                    text: "บริการ",
                  ),
                  AppNormalText(text: "ภาพรวม")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/pexels-josh-sorenson-1054387.jpg"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  Text("Here"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppNormalText(
                    text: "ข่าวสาร",
                  ),
                  AppNormalText(text: "ดูทั้งหมด", color: AppColor.textColor01),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 130,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left:10),
              child: ListView.builder(
                  scrollDirection: Axis. horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 40),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/"+images.keys.elementAt(index)),
                                  fit: BoxFit.cover),
                            ),
                          ),
                           Container(
                             margin: const EdgeInsets.only(right:40),
                            child: AppNormalText(text: images.values.elementAt(index)),)
                         
                        ],
                      ),
                    );
                    
                  }),
            )
          ],
        ),
      ),
    );
  }
}

/* dot */
class CircleTabInicatro extends Decoration {
  final Color color;
  double radius;
  CircleTabInicatro({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
