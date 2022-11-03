import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/drawer/return_request_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ReturnsRefundsPage extends StatefulWidget {
  const ReturnsRefundsPage({Key? key}) : super(key: key);

  @override
  _ReturnsRefundsPageState createState() => _ReturnsRefundsPageState();
}

class _ReturnsRefundsPageState extends State<ReturnsRefundsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        excludeHeaderSemantics: false,
        backgroundColor: HexColor("#CC9D76"),
        centerTitle: true,
        title: Center(
          child:
              Text('RETURN & REFUNDS', style: StringsStyle.registertitlestyle),
        ),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                color: HexColor("#CC9D76"),
              ),
            ),
            preferredSize: Size.fromHeight(12)),
      ),
      backgroundColor: HexColor("#CC9D76"),
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                _productlist(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor("#CC9D76"),
          onPressed: () {
            Get.to(ReturnRequestPage(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(milliseconds: 600));
          },
          child: Center(
              child: Icon(Icons.add, color: AppColors.whiteColor, size: 30))),
    );
  }

  _productlist() {
    return Container(
        width: Get.width / 1,
        child: DelayedDisplay(
            delay: Duration(milliseconds: 300),
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 10, right: 10, bottom: 10, left: 10),
                    child: Container(
                        height: Get.height / 6,
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
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Return ID:",
                                          style: TextStyle(
                                            color: HexColor("#CC9D76"),
                                          )),
                                      SizedBox(width: 3),
                                      Text("#CEJ12345",
                                          style: TextStyle(
                                            color: AppColors.lighttextColor,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Date:",
                                          style: TextStyle(
                                            color: HexColor("#CC9D76"),
                                          )),
                                      SizedBox(width: 3),
                                      Text("08/07/2021",
                                          style: TextStyle(
                                            color: AppColors.lighttextColor,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text("Order ID:",
                                      style: TextStyle(
                                        color: HexColor("#CC9D76"),
                                      )),
                                  SizedBox(width: 10),
                                  Text("#CEJ12345",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Status:",
                                          style: TextStyle(
                                            color: HexColor("#CC9D76"),
                                          )),
                                      SizedBox(width: 10),
                                      Text("Awaiting products",
                                          style: TextStyle(
                                            color: AppColors.lighttextColor,
                                          )),
                                    ],
                                  ),
                                  BouncingWidget(
                                      duration: Duration(microseconds: 700),
                                      scaleFactor: 1.5,
                                      onPressed: () {
                                        // Get.to(BottomNavigationBarPage(),
                                        //     transition: Transition.rightToLeftWithFade,
                                        //     duration: Duration(milliseconds: 600));
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: HexColor("#CC9D76"),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  spreadRadius: 1,
                                                  blurRadius: 3,
                                                  offset: Offset(0, 3))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("View",
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.whiteColor,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              SizedBox(width: 5),
                                              Icon(Icons.visibility,
                                                  color: AppColors.whiteColor),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Text("Customer Name:",
                                      style: TextStyle(
                                        color: HexColor("#CC9D76"),
                                      )),
                                  SizedBox(width: 10),
                                  Text("Awaiting products",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )),
                  );
                })));
  }
}
