import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/category/subcategory_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    children: [
                      _heading(),
                      SizedBox(height: 20),
                      _bestsellers(),
                      SizedBox(height: 20),
                      _oilperfume(),
                      SizedBox(height: 20),
                      _bakhoor(),
                    ],
                  ),
                ))));
  }

  _heading() {
    return Column(
      children: [
        Text(Strings.CATEGORY_HEADING,
            style: StringsStyle.registerheadingstyle),
        SizedBox(height: 3),
        Text(Strings.CATEOGRY_SUBHEADING,
            style: StringsStyle.registerheadingsubtitle1style)
      ],
    );
  }

  _bestsellers() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.BEST_SELLERS, style: StringsStyle.categorystyle),
              InkWell(
                  onTap: () {
                    Get.to(SubCategoryPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Text(Strings.SEEALL, style: StringsStyle.seeallstyle)),
            ],
          ),
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
                        Get.to(SubCategoryPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
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
                                          image:
                                              AssetImage(SimilarImages[index])),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
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
                                                color: HexColor("#CC9D76"),
                                              ),
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
                                                color: HexColor("#CC9D76"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          CircleAvatar(
                                            radius: 16,
                                            backgroundColor:
                                                Colors.blueGrey[50],
                                            child: Center(
                                              child: Icon(
                                                Icons.shopping_cart,
                                                size: 20,
                                                color: HexColor("#CC9D76"),
                                              ),
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
                                                color: HexColor("#CC9D76"),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15))),
                                            child: Center(
                                              child: Text("30%",
                                                  style: TextStyle(
                                                      color: Colors.white)),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                }))
      ],
    );
  }

  _oilperfume() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.OIL_PERFUME, style: StringsStyle.categorystyle),
              InkWell(
                  onTap: () {
                    Get.to(SubCategoryPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Text(Strings.SEEALL, style: StringsStyle.seeallstyle)),
            ],
          ),
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
                        Get.to(SubCategoryPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
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
                                          image:
                                              AssetImage(SimilarImages[index])),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
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
                                                color: HexColor("#CC9D76"),
                                              ),
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
                                                color: HexColor("#CC9D76"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          CircleAvatar(
                                            radius: 16,
                                            backgroundColor:
                                                Colors.blueGrey[50],
                                            child: Center(
                                              child: Icon(
                                                Icons.shopping_cart,
                                                size: 20,
                                                color: HexColor("#CC9D76"),
                                              ),
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
                                                color: HexColor("#CC9D76"),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15))),
                                            child: Center(
                                              child: Text("30%",
                                                  style: TextStyle(
                                                      color: Colors.white)),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                }))
      ],
    );
  }

  _bakhoor() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.BAKHOOR, style: StringsStyle.categorystyle),
              InkWell(
                  onTap: () {
                    Get.to(SubCategoryPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Text(Strings.SEEALL, style: StringsStyle.seeallstyle)),
            ],
          ),
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
                        Get.to(SubCategoryPage(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600));
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
                                          image:
                                              AssetImage(SimilarImages[index])),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
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
                                                color: HexColor("#CC9D76"),
                                              ),
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
                                                color: HexColor("#CC9D76"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          CircleAvatar(
                                            radius: 16,
                                            backgroundColor:
                                                Colors.blueGrey[50],
                                            child: Center(
                                              child: Icon(
                                                Icons.shopping_cart,
                                                size: 20,
                                                color: HexColor("#CC9D76"),
                                              ),
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
                                                color: HexColor("#CC9D76"),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15))),
                                            child: Center(
                                              child: Text("30%",
                                                  style: TextStyle(
                                                      color: Colors.white)),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                }))
      ],
    );
  }
}
