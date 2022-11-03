import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/filter_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/product_detail_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/search_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class SubCategoryPage extends StatefulWidget {
  const SubCategoryPage({Key? key}) : super(key: key);

  @override
  _SubCategoryPageState createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  var FeaturedProductsImages = [
    "assets/images/product3.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product4.png",
    "assets/images/product3.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product4.png",
  ];
  var eaturedProductsNames = [
    "Spray perfumes",
    "Oil perfumes",
    "fregnance",
    "Expensives",
    "Spray perfumes",
    "Oil perfumes",
    "fregnance",
    "Expensives",
  ];
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
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(FilterPage(),
                      transition: Transition.upToDown,
                      duration: Duration(milliseconds: 400));
                },
                icon: Icon(Icons.filter_tilt_shift,
                    color: AppColors.backgroundColor)),
            IconButton(
                onPressed: () {
                  Get.to(SearchPage(),
                      transition: Transition.upToDown,
                      duration: Duration(milliseconds: 400));
                },
                icon: Icon(Icons.search, color: AppColors.backgroundColor)),
          ],
          title: Text(Strings.SUBCATEGORY_PAGE_TITLE,
              style: StringsStyle.storetitlestyle),
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
                      SizedBox(
                        height: 20,
                      ),
                      _productlist(),
                    ],
                  ),
                ))));
  }

  _heading() {
    return DelayedDisplay(
        delay: Duration(milliseconds: 300),
        child: Column(
          children: [
            Text(Strings.SPRAYPERFUME,
                style: StringsStyle.registerheadingstyle),
            SizedBox(height: 10),
            Text(Strings.SUBCATEOGRY_SUBHEADING,
                style: StringsStyle.registerheadingsubtitle1style)
          ],
        ));
  }

  _productlist() {
    return Padding(
        padding: const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
        child: Container(
            child: DelayedDisplay(
                delay: Duration(milliseconds: 300),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: FeaturedProductsImages.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 10, bottom: 8, left: 10),
                        child: InkWell(
                          onTap: () {
                            Get.to(ProductDetailPage(),
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
                                              image: AssetImage(
                                                  FeaturedProductsImages[
                                                      index])),
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
                                        child: index % 3 == 0
                                            ? Container(
                                                height: 25,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                    color: HexColor("#CC9D76"),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    15))),
                                                child: Center(
                                                  child: Text("50%",
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(eaturedProductsNames[index]),
                                          SizedBox(height: 3),
                                          Text("ADE 150.00"),
                                        ],
                                      )))
                                ],
                              )),
                        ),
                      );
                    }))));
  }
}
