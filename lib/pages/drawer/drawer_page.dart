import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/bottomnavigationbar_page.dart';
import 'package:nabeel_perfume/pages/drawer/about_us_page.dart';
import 'package:nabeel_perfume/pages/drawer/privacy_policy_page.dart';
import 'package:nabeel_perfume/pages/drawer/returns&refunds_page.dart';
import 'package:nabeel_perfume/pages/drawer/terms&condition_page.dart';
import 'package:nabeel_perfume/pages/verfications/signin_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var selectedtab = -1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            width: Get.width,
            color: HexColor("#CC9D76"),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                foregroundImage:
                                    AssetImage("assets/images/dp.png"),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          AppColors.backgroundColor,
                                      child: Center(
                                          child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: HexColor("#CC9D76"),
                                      ))))
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Kaushiki Kumari",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Kaushikikumari123@gmail.com",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Divider(thickness: 3, color: AppColors.whiteColor),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedtab = 0;
                        });
                        // Get.to(AnimatedDrawerController(),
                        //     transition: Transition.rightToLeftWithFade,
                        //     duration: Duration(milliseconds: 600));
                      },
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: selectedtab == 0
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 0
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectedtab = 0;
                                  });
                                },
                                icon: Icon(
                                  Icons.home_outlined,
                                  color: selectedtab == 0
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: selectedtab == 0
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Get.to(AboutUsPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 1;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 170,
                        decoration: BoxDecoration(
                            color: selectedtab == 1
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 1
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.attribution_outlined,
                                  color: selectedtab == 1
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "About us",
                                style: TextStyle(
                                    color: selectedtab == 1
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Get.to(ReturnsRefundsPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 2;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 210,
                        decoration: BoxDecoration(
                            color: selectedtab == 2
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 2
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.keyboard_return,
                                  color: selectedtab == 2
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Return & refunds",
                                style: TextStyle(
                                    color: selectedtab == 2
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        // Get.to(OrderHistoryPage(),
                        //     transition: Transition.rightToLeftWithFade,
                        //     duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 3;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 180,
                        decoration: BoxDecoration(
                            color: selectedtab == 3
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 3
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.call_outlined,
                                  color: selectedtab == 3
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Contact us",
                                style: TextStyle(
                                    color: selectedtab == 3
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Get.to(PrivacyPolicyPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 4;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 190,
                        decoration: BoxDecoration(
                            color: selectedtab == 4
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 4
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.privacy_tip_outlined,
                                  color: selectedtab == 4
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Privacy policy",
                                style: TextStyle(
                                    color: selectedtab == 4
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Get.to(TermsAndConditionPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 5;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 210,
                        decoration: BoxDecoration(
                            color: selectedtab == 5
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 5
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.ac_unit_outlined,
                                  color: selectedtab == 5
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Terms & Condition",
                                style: TextStyle(
                                    color: selectedtab == 5
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        // Get.to(TermsOfUsePage(),
                        //     transition: Transition.rightToLeftWithFade,
                        //     duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 6;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 205,
                        decoration: BoxDecoration(
                            color: selectedtab == 6
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 6
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.share_outlined,
                                  color: selectedtab == 6
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Share Application",
                                style: TextStyle(
                                    color: selectedtab == 6
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Get.to(SignInPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
                        setState(() {
                          selectedtab = 8;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 155,
                        decoration: BoxDecoration(
                            color: selectedtab == 8
                                ? Colors.white
                                : HexColor("#CC9D76"),
                            boxShadow: [
                              BoxShadow(
                                color: selectedtab == 8
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.logout_outlined,
                                  color: selectedtab == 8
                                      ? AppColors.darktextColor
                                      : AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Log-out",
                                style: TextStyle(
                                    color: selectedtab == 8
                                        ? AppColors.darktextColor
                                        : AppColors.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.corporate_fare,
                              color: AppColors.whiteColor,
                              size: 15,
                            ),
                            Text(
                              "Nabeel perfumes",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Powered By :",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              letterSpacing: 0.3,
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Aara Technologies Pvt. Ltd.",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              letterSpacing: 0.3,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 70),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
