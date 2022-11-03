import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  var SimilarImages = [
    "assets/images/product3.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product4.png"
  ];
  var SimilarNames = [
    "Spray perfumes",
    "Oil perfumes",
    "fregnance",
    "Expensives",
  ];
  var _selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        elevation: 0,
        excludeHeaderSemantics: false,
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //       onPressed: null,
        //       icon: Icon(
        //         Icons.shopping_bag_outlined,
        //         color: AppColors.darktextColor,
        //       ))
        // ],
        title: Text(Strings.DETAIL_PAGE_TITLE,
            style: TextStyle(
                color: AppColors.lighttextColor,
                fontSize: 15,
                letterSpacing: 1)),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                color: HexColor("#CC9D76"),
              ),
            ),
            preferredSize: Size.fromHeight(12)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height / 2,
              width: Get.width / 1,
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                image: DecorationImage(
                    image: AssetImage("assets/images/product3.png")),
              ),
            ),
            Container(
              width: Get.width / 1,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Amber",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,
                            size: 17, color: AppColors.appbackgroundColor),
                        SizedBox(width: 2),
                        Icon(Icons.star,
                            size: 17, color: AppColors.appbackgroundColor),
                        SizedBox(width: 2),
                        Icon(Icons.star,
                            size: 17, color: AppColors.appbackgroundColor),
                        SizedBox(width: 2),
                        Icon(Icons.star,
                            size: 17, color: AppColors.appbackgroundColor),
                        SizedBox(width: 2),
                        Icon(Icons.star, size: 17, color: Colors.orange[100]),
                        SizedBox(width: 8),
                        Text("1,248 Reviews",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Text(
                            "Romance is not all rose petals, and rainbows.Love is",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            )),
                        Text(
                            "a potent mix of harshspices and soft florals,full of",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            )),
                        Text("layers, mystique and magic.",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("AED 150.00",
                        style: TextStyle(
                            color: HexColor("#CC9D76"),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 30),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedtab = 0;
                                });
                              },
                              child: Text("Description",
                                  style: TextStyle(
                                    color: _selectedtab == 0
                                        ? AppColors.darktextColor
                                        : AppColors.lighttextColor,
                                    fontWeight: _selectedtab == 0
                                        ? FontWeight.bold
                                        : FontWeight.w400,
                                    fontSize: 18,
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedtab = 1;
                                });
                              },
                              child: Text("Specifications",
                                  style: TextStyle(
                                    color: _selectedtab == 1
                                        ? AppColors.darktextColor
                                        : AppColors.lighttextColor,
                                    fontWeight: _selectedtab == 1
                                        ? FontWeight.bold
                                        : FontWeight.w400,
                                    fontSize: 18,
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedtab = 2;
                                });
                              },
                              child: Text("Reviews",
                                  style: TextStyle(
                                    color: _selectedtab == 2
                                        ? AppColors.darktextColor
                                        : AppColors.lighttextColor,
                                    fontWeight: _selectedtab == 2
                                        ? FontWeight.bold
                                        : FontWeight.w400,
                                    fontSize: 18,
                                  )),
                            ),
                          ],
                        ),
                        Visibility(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Text(
                                      "Romance is not all rose petals, and rainbows.Love is",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text(
                                      "a potent mix of harshspices and soft florals,full of",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text(
                                      "layers, mystique and magic.It's an emotion so",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text(
                                      "powerful it can sweep you away in its tides of",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text(
                                      "passion, envelope you in its socery.and hold you",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("at its mercy for all of eternity.",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          visible: _selectedtab == 0,
                        ),
                        Visibility(
                          child: Container(
                              child: Column(
                            children: [
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("TOP NOTES",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("Coconut saffron, etc.",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("MIDDLE NOTES",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("Cumin, Camomile, etc.",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("BASE NOTES",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("Amber,Vertiver, etc.",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("OLFACTIVE FAMILY",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("Woody-Sandalwood, etc.",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("BOTTLE TYPE",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                  Text("Glass",
                                      style: TextStyle(
                                        color: AppColors.lighttextColor,
                                      )),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                            ],
                          )),
                          visible: _selectedtab == 1,
                        ),
                        Visibility(
                          child: Container(
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                primary: true,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 2,
                                itemBuilder: (BuildContext context, int index) {
                                  return Expanded(
                                    child: Container(
                                        child: Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor:
                                                        Colors.grey[100],
                                                    child: Icon(
                                                        Icons.image_outlined,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Kaushiki",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .darktextColor,
                                                          )),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(Icons.star,
                                                              size: 15,
                                                              color: AppColors
                                                                  .appbackgroundColor),
                                                          SizedBox(width: 2),
                                                          Icon(Icons.star,
                                                              size: 15,
                                                              color: AppColors
                                                                  .appbackgroundColor),
                                                          SizedBox(width: 2),
                                                          Icon(Icons.star,
                                                              size: 15,
                                                              color: AppColors
                                                                  .appbackgroundColor),
                                                          SizedBox(width: 2),
                                                          Icon(Icons.star,
                                                              size: 15,
                                                              color: AppColors
                                                                  .appbackgroundColor),
                                                          SizedBox(width: 2),
                                                          Icon(Icons.star,
                                                              size: 15,
                                                              color: Colors
                                                                  .orange[100]),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Text("27 November 2019",
                                                  style: TextStyle(
                                                    color: AppColors
                                                        .lighttextColor,
                                                  )),
                                            ]),
                                        SizedBox(height: 10),
                                        Text(
                                            "kads kajslda lkjwlq lqkwqqlkw lkqw lkqw qlwjl\nnak aksna skdna kasna kasnda kansda saks ",
                                            style: TextStyle(
                                              color: AppColors.lighttextColor,
                                            )),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: 40,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Center(
                                                    child: Text("Helpful?"))),
                                            Text("Report",
                                                style: TextStyle(
                                                    color:
                                                        HexColor("#CC9D76"))),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Divider(),
                                        SizedBox(height: 10),
                                      ],
                                    )),
                                  );
                                }),
                          ),
                          visible: _selectedtab == 2,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text("Similar products",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontSize: 18,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 3,
                    ),
                    Text("- - - - - - - - - - - -",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: Get.height / 3.5,
                        width: Get.width / 1,
                        child: ListView.builder(
                            itemCount: SimilarImages.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, right: 8, bottom: 10, left: 8),
                                child: InkWell(
                                  onTap: () {
                                    // Get.to(SubCategoryPage(),
                                    //     transition:
                                    //         Transition.rightToLeftWithFade,
                                    //     duration: Duration(milliseconds: 600));
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.backgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade500,
                                                spreadRadius: 1,
                                                blurRadius: 8,
                                                offset: Offset(1, 1))
                                          ]),
                                      width: Get.width / 2.5,
                                      child: Column(
                                        children: [
                                          Expanded(
                                              child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          SimilarImages[
                                                              index])),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15),
                                                          topRight:
                                                              Radius.circular(
                                                                  15)),
                                                ),
                                              ),
                                              Positioned(
                                                right: 8,
                                                bottom: 2,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 16,
                                                        backgroundColor:
                                                            Colors.blueGrey[50],
                                                        child: Center(
                                                          child: Icon(
                                                              Icons.share,
                                                              size: 20,
                                                              color: HexColor(
                                                                  "#CC9D76")),
                                                        ),
                                                      ),
                                                      SizedBox(height: 5),
                                                      CircleAvatar(
                                                        radius: 16,
                                                        backgroundColor:
                                                            Colors.blueGrey[50],
                                                        child: Center(
                                                          child: Icon(
                                                              Icons.bookmark,
                                                              size: 20,
                                                              color: HexColor(
                                                                  "#CC9D76")),
                                                        ),
                                                      ),
                                                      SizedBox(height: 5),
                                                      CircleAvatar(
                                                        radius: 16,
                                                        backgroundColor:
                                                            Colors.blueGrey[50],
                                                        child: Center(
                                                          child: Icon(
                                                              Icons
                                                                  .shopping_cart,
                                                              size: 20,
                                                              color: HexColor(
                                                                  "#CC9D76")),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: -1,
                                                right: -1,
                                                child: index % 2 == 0
                                                    ? Container(
                                                        height: 25,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color: HexColor(
                                                                "#CC9D76"),
                                                            borderRadius:
                                                                BorderRadius.only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15))),
                                                        child: Center(
                                                          child: Text("30%",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                      )
                                                    : Text(''),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              height: 60,
                                              child: Center(
                                                  child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(SimilarNames[index]),
                                                  SizedBox(height: 3),
                                                  Text("ADE 150.00"),
                                                ],
                                              )))
                                        ],
                                      )),
                                ),
                              );
                            })),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
            height: 60,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BouncingWidget(
                    duration: Duration(microseconds: 700),
                    scaleFactor: 1.5,
                    onPressed: () {
                      // Get.to(AnimatedDrawerController(),
                      //     transition: Transition.rightToLeftWithFade,
                      //     duration: Duration(milliseconds: 600));

                      Get.snackbar(
                        "product added to collection successfully",
                        "just now",
                        snackPosition: SnackPosition.TOP,
                        colorText: AppColors.lighttextColor,
                        backgroundColor: AppColors.backgroundColor,
                        boxShadows: [
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey.shade300,
                            offset: Offset(0, 2),
                            spreadRadius: 2,
                          ),
                        ],
                        margin: EdgeInsets.all(15),
                      );
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[100],
                      child: Center(
                          child: Icon(Icons.bookmark,
                              color: Colors.black, size: 25)),
                    ),
                  ),
                  // SizedBox(width: 10),
                  BouncingWidget(
                      duration: Duration(microseconds: 700),
                      scaleFactor: 1.5,
                      onPressed: () {
                        // Get.to(AnimatedDrawerController(),
                        //     transition: Transition.rightToLeftWithFade,
                        //     duration: Duration(milliseconds: 600));

                        Get.snackbar(
                          "product added to cart successfully",
                          "just now",
                          snackPosition: SnackPosition.TOP,
                          colorText: AppColors.lighttextColor,
                          backgroundColor: AppColors.backgroundColor,
                          boxShadows: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.grey.shade300,
                              offset: Offset(0, 2),
                              spreadRadius: 2,
                            ),
                          ],
                          margin: EdgeInsets.all(15),
                        );
                      },
                      child: CommonButton(
                          text: "ADD TO CART", width: 200, height: 50)),
                  //SizedBox(width: 10),
                  BouncingWidget(
                      duration: Duration(microseconds: 700),
                      scaleFactor: 1.5,
                      onPressed: () {},
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[100],
                        child: Center(
                            child: Icon(Icons.forward,
                                color: Colors.black, size: 25)),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
