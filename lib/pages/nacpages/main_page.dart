

import 'package:demoflutter1/pages/nacpages/bar_item_page.dart';
import 'package:demoflutter1/pages/home_page.dart';
import 'package:demoflutter1/pages/nacpages/my_page.dart';
import 'package:demoflutter1/pages/nacpages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
  const HomePage(),
  const BarItemPage(), 
  const SearchPage(),
   const Mypage()
   ];
   int currentIndex=0 ;
   void onTap(int index){
    setState(() {
      currentIndex= index;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
        BottomNavigationBarItem( icon: Icon(Icons.apps),label:"home"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label:"bar"),
        BottomNavigationBarItem( icon: Icon(Icons.search),label:"search"),
        BottomNavigationBarItem( icon: Icon(Icons.person),label:"My"),
      ]),
    );
  }
}
