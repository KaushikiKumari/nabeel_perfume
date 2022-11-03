import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/change_address_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/shipping_address_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

import 'order_placed_page.dart';

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({Key? key}) : super(key: key);

  @override
  _ConfirmOrderPageState createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  var CategoryImages = [
    "assets/images/product3.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
  ];
  var CategoryNames = [
    "Spray perfumes",
    "Oil perfumes",
    "Womens perfumes",
  ];
  var ShippingMethod = [
    "Standard Shipping (16 days)",
    "Express (8 days)",
    "Premium (1 days)",
  ];

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
        title: Text("CONFIRM YOUR ORDER", style: StringsStyle.storetitlestyle),
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
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _address(),
                    Text(
                      "ORDER DETAILS",
                      style: TextStyle(
                        color: AppColors.lighttextColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    _productlist(),
                    SizedBox(height: 20),
                    Text(
                      "SHIPPING METHOD",
                      style: TextStyle(
                        color: AppColors.lighttextColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    _paymentmethods(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              _paydetail(),
            ],
          ),
        ),
      ),
    );
  }

  _paydetail() {
    return Container(
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(1, 1))
          ],
          color: HexColor("#CC9D76"),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SHIPPING CHARGE",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ChangeAddress(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(milliseconds: 600));
                    },
                    child: Text(
                      "AED 150.00",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SHIPPING METHOD",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ChangeAddress(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(milliseconds: 600));
                    },
                    child: Text(
                      "Please select",
                      style: TextStyle(
                        color: AppColors.lighttextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOTAL TO PAY",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ChangeAddress(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(milliseconds: 600));
                    },
                    child: Text(
                      "AED 150.00",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.to(OrderPlacedPage(),
                      transition: Transition.zoom,
                      curve: Curves.bounceInOut,
                      duration: Duration(milliseconds: 300));
                },
                child: Center(
                  child: Text(
                    "PLACE ORDER",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ));
  }

  _address() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "SHIPPING TO",
              style: TextStyle(
                color: AppColors.lighttextColor,
              ),
            ),
            SizedBox(width: 50),
            InkWell(
              onTap: () {
                Get.to(ChangeAddress(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
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
        SizedBox(height: 10),
        Text(
          "B-7 real earth city, chinhut",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Uttar pradesh, india",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Divider(
          color: AppColors.lighttextColor,
        ),
        SizedBox(height: 10),
      ],
    );
  }

  _productlist() {
    return Container(
        width: Get.width / 1,
        child: ListView.builder(
            itemCount: CategoryImages.length,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 15, bottom: 10, left: 10),
                child: Container(
                    height: Get.height / 8,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(CategoryImages[index])),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Container(
                              width: Get.width / 1 - 180,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(CategoryNames[index]),
                                  IconButton(
                                      onPressed: () {
                                        Get.defaultDialog(
                                          radius: 5,
                                          backgroundColor: Colors.white,
                                          title: 'Want to remove this product?',
                                          titleStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          content: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    Get.back();
                                                    Get.snackbar(
                                                      "product deleted from your order list",
                                                      "just now",
                                                      snackPosition:
                                                          SnackPosition.BOTTOM,
                                                      colorText: AppColors
                                                          .lighttextColor,
                                                      backgroundColor: AppColors
                                                          .backgroundColor,
                                                      boxShadows: [
                                                        BoxShadow(
                                                          blurRadius: 1,
                                                          color: Colors
                                                              .grey.shade200,
                                                          offset: Offset(0, 2),
                                                          spreadRadius: 2,
                                                        ),
                                                      ],
                                                      margin:
                                                          EdgeInsets.all(15),
                                                    );
                                                  },
                                                  child: Center(
                                                    child: Container(
                                                        height: 45,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .appbackgroundColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Center(
                                                            child: Text(
                                                          "Yes",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ))),
                                                  )),
                                              InkWell(
                                                  onTap: () {
                                                    Get.back();
                                                  },
                                                  child: Center(
                                                    child: Container(
                                                        height: 45,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .appbackgroundColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Center(
                                                            child: Text(
                                                          "No",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ))),
                                                  )),
                                            ],
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.clear))
                                ],
                              ),
                            ),
                            Text("AED 150.99",
                                style: TextStyle(
                                    color: HexColor("#CC9D76"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17)),
                            SizedBox(height: 10),
                          ],
                        )
                      ],
                    )),
              );
            }));
  }

  _paymentmethods() {
    return Container(
      width: Get.width / 1,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          primary: true,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedtab = index;
                  });
                },
                child: Row(
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
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    ShippingMethod[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),
                                InkWell(
                                  onTap: () {
                                    // Get.to(ChangeAddress(),
                                    //     transition: Transition
                                    //         .rightToLeftWithFade,
                                    //     duration: Duration(
                                    //         milliseconds: 600));
                                  },
                                  child: index == 1 || index == 2
                                      ? Text(
                                          "AED 150.00",
                                          style: TextStyle(
                                            color: AppColors.darktextColor,
                                          ),
                                        )
                                      : Text(
                                          "Free",
                                          style: TextStyle(
                                            color: HexColor("#CC9D76"),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
