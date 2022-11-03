import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/product_detail_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ProductDeletePage extends StatefulWidget {
  @override
  _ProductDeletePageState createState() => _ProductDeletePageState();
}

class _ProductDeletePageState extends State<ProductDeletePage> {
  var CategoryImages = [
    "assets/images/product3.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product4.png"
  ];
  var CategoryNames = [
    "fregnance",
    "Expensives",
    "fregnance",
    "Expensives",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          excludeHeaderSemantics: false,
          automaticallyImplyLeading: false,
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.clear)),
            )
          ],
          title: Text("COLLECTION", style: StringsStyle.registertitlestyle),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 20),
                child: Container(
                    color: HexColor("#CC9D76"),
                    child: Column(children: [
                      Text("To remove an term, simply tap on the icon on",
                          style: TextStyle(
                            color: AppColors.backgroundColor,
                          )),
                      SizedBox(height: 5),
                      Text("the bottom right corner of the product.",
                          style: TextStyle(
                            color: AppColors.backgroundColor,
                          ))
                    ])),
              ),
              preferredSize: Size.fromHeight(80)),
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
            child: Column(
              children: [
                Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: CategoryNames.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 8, bottom: 8, left: 8),
                            child: InkWell(
                              onLongPress: () {
                                Get.to(ProductDeletePage(),
                                    transition: Transition.downToUp,
                                    duration: Duration(milliseconds: 600));
                              },
                              onTap: () {
                                Get.to(ProductDetailPage(),
                                    transition: Transition.rightToLeftWithFade,
                                    duration: Duration(milliseconds: 800));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.backgroundColor,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade500,
                                            spreadRadius: 1,
                                            blurRadius: 8,
                                            offset: Offset(1, 1))
                                      ]),
                                  height: Get.height / 4,
                                  width: Get.width / 3,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  CategoryImages[index])),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15)),
                                        ),
                                      )),
                                      Container(
                                          height: 60,
                                          child: Center(
                                              child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(CategoryNames[index]),
                                                    SizedBox(height: 5),
                                                    Text("AED 150.00"),
                                                  ],
                                                ),
                                                SizedBox(width: 10),
                                                InkWell(
                                                  onTap: () {
                                                    Get.defaultDialog(
                                                      radius: 5,
                                                      backgroundColor:
                                                          Colors.white,
                                                      title:
                                                          'Want to remove this product?',
                                                      titleStyle: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      content: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          InkWell(
                                                              onTap: () {
                                                                Get.back();
                                                                Get.snackbar(
                                                                  "product deleted from your collection",
                                                                  "just now",
                                                                  snackPosition:
                                                                      SnackPosition
                                                                          .BOTTOM,
                                                                  colorText:
                                                                      AppColors
                                                                          .lighttextColor,
                                                                  backgroundColor:
                                                                      AppColors
                                                                          .backgroundColor,
                                                                  boxShadows: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          1,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade200,
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              2),
                                                                      spreadRadius:
                                                                          2,
                                                                    ),
                                                                  ],
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              15),
                                                                );
                                                              },
                                                              child: Center(
                                                                child: Container(
                                                                    height: 45,
                                                                    width: 100,
                                                                    decoration: BoxDecoration(color: HexColor("#CC9D76"), borderRadius: BorderRadius.circular(20)),
                                                                    child: Center(
                                                                        child: Text(
                                                                      "Yes",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
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
                                                                    decoration: BoxDecoration(color: HexColor("#CC9D76"), borderRadius: BorderRadius.circular(20)),
                                                                    child: Center(
                                                                        child: Text(
                                                                      "No",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ))),
                                                              )),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.red,
                                                      child: Center(
                                                          child: Icon(
                                                        Icons.delete_outlined,
                                                        color: AppColors
                                                            .backgroundColor,
                                                      ))),
                                                )
                                              ],
                                            ),
                                          )))
                                    ],
                                  )),
                            ),
                          );
                        })),
                SizedBox(
                  height: 250,
                )
              ],
            ),
          ),
        )));
  }
}
