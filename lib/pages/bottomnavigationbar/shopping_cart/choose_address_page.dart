import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/change_address_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/confirm_order_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/shipping_address_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ChooseAddressPage extends StatefulWidget {
  const ChooseAddressPage({Key? key}) : super(key: key);

  @override
  _ChooseAddressPageState createState() => _ChooseAddressPageState();
}

class _ChooseAddressPageState extends State<ChooseAddressPage> {
  var selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.backgroundColor),
          elevation: 0,
          excludeHeaderSemantics: false,
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          title: Text("CHOOSE ADDRESSES", style: StringsStyle.storetitlestyle),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                child: Container(
                  color: HexColor("#CC9D76"),
                ),
              ),
              preferredSize: Size.fromHeight(10)),
        ),
        body: SingleChildScrollView(
            child: Container(
                width: Get.width / 1,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: _addresses(),
                ))),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            height: 120,
            child: Column(
              children: [
                BouncingWidget(
                  duration: Duration(microseconds: 700),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Get.to(ShippingAddressPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Container(
                      height: 50,
                      width: Get.width,
                      child: Center(
                          child: CommonButton(
                              text: "ADD NEW ADDRESS",
                              width: 250,
                              height: 50))),
                ),
                SizedBox(height: 10),
                BouncingWidget(
                  duration: Duration(microseconds: 700),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Get.to(ConfirmOrderPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Container(
                      height: 50,
                      width: Get.width,
                      child: Center(
                          child: CommonButton(
                              text: "NEXT STEP", width: 250, height: 50))),
                ),
              ],
            ),
          ),
        ));
  }

  _addresses() {
    return Container(
      width: Get.width / 1,
      height: Get.height,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          primary: true,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedtab = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: index == 0
                          ? Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                  color: HexColor("#CC9D76"),
                                ),
                              ),
                            )
                          : Text(
                              "Work",
                              style: TextStyle(
                                color: HexColor("#CC9D76"),
                              ),
                            ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                selectedtab = index;
                              });
                            },
                            icon: selectedtab == index
                                ? Icon(
                                    Icons.radio_button_checked,
                                    color: HexColor("#CC9D76"),
                                  )
                                : Icon(
                                    Icons.radio_button_unchecked_outlined,
                                    color: HexColor("#CC9D76"),
                                  )),
                        SizedBox(width: 10),
                        Container(
                            width: Get.width / 1.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 1,
                                    blurRadius: 8,
                                    offset: Offset(1, 1))
                              ],
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "B-7 real earth city, chinhut",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          InkWell(
                                            onTap: () {
                                              Get.to(ChangeAddress(),
                                                  transition: Transition
                                                      .rightToLeftWithFade,
                                                  duration: Duration(
                                                      milliseconds: 600));
                                            },
                                            child: Text(
                                              "Change",
                                              style: TextStyle(
                                                color: HexColor("#CC9D76"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Lucknow",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Uttar pradesh",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
