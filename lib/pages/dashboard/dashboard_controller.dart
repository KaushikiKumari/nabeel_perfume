import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/bottomnavigationbar_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/notification_page.dart';
import 'package:nabeel_perfume/pages/drawer/drawer_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class DashboardController extends StatefulWidget {
  const DashboardController({Key? key}) : super(key: key);

  @override
  _DashboardControllerState createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> {
  final drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
      controller: drawerController,
      style: DrawerStyle.Style1,
      menuScreen: DrawerPage(),
      mainScreen: MainPage(drawerController),
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.white60,
      //  slideWidth: MediaQuery.of(context).size.width * (ZoomDrawer.isRtl?.45:0.65),
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.easeOut,
    ));
  }
}

class MainPage extends StatefulWidget {
  final zoomDrawerController;
  MainPage(this.zoomDrawerController);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var selectedPos;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
              onTap: () => widget.zoomDrawerController.toggle(),
              child: Icon(
                Icons.notes,
                color: Colors.white,
              )),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          excludeHeaderSemantics: false,
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(NotificationPage(),
                      transition: Transition.upToDown,
                      duration: Duration(milliseconds: 400));
                },
                icon: Icon(Icons.notifications_outlined,
                    color: AppColors.backgroundColor))
          ],
          // title: Center(
          //     child: selectedPos == 0
          //         ? Text('HOME', style: StringsStyle.registertitlestyle)
          //         : selectedPos == 1
          //             ? Text('CATEGORY', style: StringsStyle.registertitlestyle)
          //             : selectedPos == 2
          //                 ? Text('CART', style: StringsStyle.registertitlestyle)
          //                 : selectedPos == 3
          //                     ? Text('COLLECTIONS',
          //                         style: StringsStyle.registertitlestyle)
          //                     : selectedPos == 4
          //                         ? Text('SETTINGS',
          //                             style: StringsStyle.registertitlestyle)
          //                         : Text('HOME',
          //                             style: StringsStyle.registertitlestyle)),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                child: Container(
                  color: HexColor("#CC9D76"),
                ),
              ),
              preferredSize: Size.fromHeight(12)),
        ),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   leading: InkWell(
        //       onTap: () => widget.zoomDrawerController.toggle(),
        //       child: Icon(
        //         Icons.notes,
        //         color: HexColor("2E43FF"),
        //       )),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: InkWell(
        //           onTap: () {
        //             // Get.to(CheckOutPage(),
        //             //     transition: Transition.rightToLeftWithFade,
        //             //     duration: Duration(milliseconds: 600));
        //           },
        //           child: Icon(
        //             Icons.shopping_bag,
        //             color: HexColor("2E43FF"),
        //           )),
        //     ),
        //   ],
        // ),
        body: SafeArea(child: BottomNavigationBarPage(context)));
  }
}
