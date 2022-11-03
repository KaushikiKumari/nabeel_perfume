import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:fancy_bottom_bar/fancy_bottom_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/category/category_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/home_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/notification_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/search_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/my_collections/collection_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/settings_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/shopping_cart_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class BottomNavigationBarPage extends StatefulWidget {
  final zoomDrawerController;
  BottomNavigationBarPage(this.zoomDrawerController);
  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int selectedPos = 0;
  var zoomDrawerController;
  final tabs = [
    HomePage(),
    CategoryPage(),
    ShoppingCartPage(),
    CollectionPage(),
    SettingsPage(),
  ];
  final tabItems = [
    FancyBottomItem(
        title: Text("Home",
            style: TextStyle(
              color: HexColor("#CC9D76"),
            )),
        icon: Icon(Icons.home_outlined)),
    FancyBottomItem(
        title: Text("Category",
            style: TextStyle(
              color: HexColor("#CC9D76"),
            )),
        icon: Icon(Icons.category_outlined)),
    FancyBottomItem(
        title: Text("Cart",
            style: TextStyle(
              color: HexColor("#CC9D76"),
            )),
        icon: Icon(Icons.shopping_bag_outlined)),
    FancyBottomItem(
        title: Text("Collection",
            style: TextStyle(
              color: HexColor("#CC9D76"),
            )),
        icon: Icon(Icons.bookmark_border_outlined)),
    FancyBottomItem(
        title: Text("Settings",
            style: TextStyle(
              color: HexColor("#CC9D76"),
            )),
        icon: Icon(Icons.settings_outlined)),
  ];

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey =
        new GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
          key: _scaffoldkey,
          backgroundColor: Colors.white,
          bottomNavigationBar: FancyBottomBar(
            onItemSelected: (i) => setState(() => selectedPos = i),
            items: tabItems,
            selectedPosition: selectedPos,
            selectedColor: HexColor("#CC9D76"),
            indicatorColor: HexColor("#CC9D76"),
          ),
          body: tabs[selectedPos]),
    );
  }
}
