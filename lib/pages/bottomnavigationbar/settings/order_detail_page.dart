import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
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
          title: Text("ORDER DETAILS", style: StringsStyle.registertitlestyle),
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
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Date created:",
                            style: TextStyle(
                                color: AppColors.darktextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Today 16:49",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Status:",
                                style: TextStyle(
                                    color: AppColors.darktextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Completed",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Payment:",
                                style: TextStyle(
                                    color: AppColors.darktextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Credit card",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Billing Address:",
                                style: TextStyle(
                                    color: AppColors.darktextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Ada Chrys-Chikere",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "14 Wilton Close",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Northwich",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "CW9 8WE",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shiping Address:",
                                style: TextStyle(
                                    color: AppColors.darktextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Ada Chrys-Chikere",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "14 Wilton Close",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Northwich",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "CW9 8WE",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Items",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 3, color: Colors.grey[300]),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                          Container(
                            width: Get.width / 2.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                    color: AppColors.lighttextColor,
                                  ),
                                ),
                                Text(
                                  "Qty.",
                                  style: TextStyle(
                                    color: AppColors.lighttextColor,
                                  ),
                                ),
                                Text(
                                  "Total.",
                                  style: TextStyle(
                                    color: AppColors.lighttextColor,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 3, color: Colors.grey[300]),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.grey.shade300,
                                          offset: Offset(0, 3),
                                          spreadRadius: 2,
                                        ),
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/product4.png")),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Product",
                                    style: TextStyle(
                                        color: AppColors.lighttextColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        color: AppColors.lighttextColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: Get.width / 2.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$13.99",
                                  style: TextStyle(
                                    color: AppColors.lighttextColor,
                                  ),
                                ),
                                Text(
                                  "4",
                                  style: TextStyle(
                                    color: AppColors.lighttextColor,
                                  ),
                                ),
                                Text(
                                  "\$90.00",
                                  style: TextStyle(
                                    color: AppColors.lighttextColor,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping charges",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                          Text(
                            "\$5.00",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Coupans",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                          Text(
                            "\$5.00",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order total",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                          Text(
                            "\$90.00",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 3, color: Colors.grey[300]),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Paid",
                            style: TextStyle(
                                color: AppColors.darktextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$90.00",
                            style: TextStyle(
                                color: AppColors.darktextColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ))));
  }
}
