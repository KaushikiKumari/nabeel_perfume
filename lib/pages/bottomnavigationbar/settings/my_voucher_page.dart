import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class MyVouchers extends StatefulWidget {
  const MyVouchers({Key? key}) : super(key: key);

  @override
  _MyVouchersState createState() => _MyVouchersState();
}

class _MyVouchersState extends State<MyVouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.whiteColor),
          elevation: 0,
          excludeHeaderSemantics: false,
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          title: Text(Strings.MYVOUCHER_PAGE_TITLE,
              style: StringsStyle.storetitlestyle),
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
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "  ACTIVE VOUCHERS",
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: Get.width / 1,
                        child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 15,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Boutique Discount",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .darktextColor,
                                                          fontSize: 15)),
                                                  SizedBox(height: 3),
                                                  Text(
                                                      "Valid util february 2020",
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .lighttextColor,
                                                      ))
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                VerticalDivider(),
                                                SizedBox(width: 10),
                                                Text("20%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: AppColors
                                                            .appbackgroundColor,
                                                        fontSize: 20)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                            })),
                    SizedBox(height: 30),
                    Text(
                      "  USED VOUCHERS",
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: Get.width / 1,
                        child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[50],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 15,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("2 for 1",
                                                      style: TextStyle(
                                                          color: Colors.black38,
                                                          fontSize: 15)),
                                                  SizedBox(height: 3),
                                                  Text(
                                                      "used on 24th december 2019",
                                                      style: TextStyle(
                                                        color: Colors.black38,
                                                      ))
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                VerticalDivider(),
                                                SizedBox(width: 10),
                                                Text("20%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Colors.orange[200],
                                                        fontSize: 20)),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                            })),
                  ],
                ),
              )),
        ));
  }
}
