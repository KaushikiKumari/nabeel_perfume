import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/my_address_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/my_voucher_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/nearby_stores_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/order_history_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/profile_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/settings_personal_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';

import 'my_cards_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        body: SingleChildScrollView(
            child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(MyProfile(),
                            transition: Transition.upToDown,
                            duration: Duration(milliseconds: 300));
                      },
                      child: CircleAvatar(
                        radius: 50,
                        foregroundImage: AssetImage("assets/images/dp.png"),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                            backgroundColor: HexColor("#CC9D76"),
                            child: InkWell(
                                onTap: () {
                                  Get.to(MyProfile(),
                                      transition: Transition.upToDown,
                                      duration: Duration(milliseconds: 300));
                                },
                                child: Center(
                                    child: Icon(
                                  Icons.edit_outlined,
                                  color: AppColors.whiteColor,
                                )))))
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Kaushiki Kumari",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 3),
                Text(
                  "Kaushikikumari123@gmail.com",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Get.to(HistoryOrderPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order History",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.keyboard_arrow_right_outlined,
                              color: AppColors.darktextColor))
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(MyAddressPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Addresses",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.keyboard_arrow_right_outlined,
                              color: AppColors.darktextColor))
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(MyCardsPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Cards",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.keyboard_arrow_right_outlined,
                              color: AppColors.darktextColor))
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(MyVouchers(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Vouchers",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.keyboard_arrow_right_outlined,
                              color: AppColors.darktextColor))
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(NearbyStoresPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearby Stores",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.keyboard_arrow_right_outlined,
                              color: AppColors.darktextColor))
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(MySettings(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.keyboard_arrow_right_outlined,
                              color: AppColors.darktextColor))
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 50),
              ],
            ),
          ),
        )));
  }
}
