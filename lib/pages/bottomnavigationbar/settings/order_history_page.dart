import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/order_detail_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/order_tracking_page.dart';

import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class HistoryOrderPage extends StatefulWidget {
  const HistoryOrderPage({Key? key}) : super(key: key);

  @override
  _HistoryOrderPageState createState() => _HistoryOrderPageState();
}

class _HistoryOrderPageState extends State<HistoryOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#CC9D76"),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        excludeHeaderSemantics: false,
        backgroundColor: HexColor("#CC9D76"),
        centerTitle: true,
        title: Text(Strings.ORDERHISTORY_PAGE_TITLE,
            style: StringsStyle.registertitlestyle),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                color: HexColor("#CC9D76"),
              ),
            ),
            preferredSize: Size.fromHeight(15)),
      ),
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
            child: Container(
              width: Get.width / 1,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(OrderDetailPage(),
                              transition: Transition.rightToLeftWithFade,
                              duration: Duration(milliseconds: 600));
                        },
                        child: Container(
                            child: Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("ORDER #21412",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("View Details",
                                      style: TextStyle(
                                        color: HexColor("#CC9D76"),
                                      )),
                                ]),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("Placed On:",
                                    style: TextStyle(
                                      color: AppColors.darktextColor,
                                    )),
                                SizedBox(width: 10),
                                Text("23th of january",
                                    style: TextStyle(
                                      color: AppColors.lighttextColor,
                                    )),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text("Amount:",
                                    style: TextStyle(
                                      color: AppColors.darktextColor,
                                    )),
                                SizedBox(width: 10),
                                Text("AED  150.00",
                                    style: TextStyle(
                                      color: AppColors.lighttextColor,
                                    )),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text("Status:",
                                    style: TextStyle(
                                      color: AppColors.darktextColor,
                                    )),
                                SizedBox(width: 10),
                                Text("Delivered",
                                    style: TextStyle(
                                      color: AppColors.lighttextColor,
                                    )),
                              ],
                            ),
                            SizedBox(height: 15),
                            Divider(),
                          ],
                        )),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
