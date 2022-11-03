import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/category/subcategory_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/featured_products_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/product_detail_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var CategoryImages = [
    "assets/images/product3.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product4.png"
  ];
  var CategoryNames = [
    "Spray perfumes",
    "Oil perfumes",
    "fregnance",
    "Expensives",
  ];
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
        body: SingleChildScrollView(
            child: Container(
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
                      _cardslider(),
                      SizedBox(height: 10),
                      _heading(),
                      SizedBox(height: 30),
                      _category(),
                      SizedBox(height: 30),
                      _topdeals(),
                      SizedBox(height: 30),
                      _featuredproducts(),
                    ],
                  ),
                ))));
  }

  _cardslider() {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/slid1.jpg")),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),

        //2nd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/slid2.jpg")),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),

        //3rd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/slid3.jpg")),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        //4rth Image of slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/slid4.jpg"),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.7,
      ),
    );
  }

  _heading() {
    return Column(
      children: [
        Text(Strings.HOME_HEADING, style: StringsStyle.registerheadingstyle),
        SizedBox(height: 3),
        Text(Strings.HOME_SUBHEADING,
            style: StringsStyle.registerheadingsubtitle1style)
      ],
    );
  }

  _category() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
              onTap: () {
                Get.to(SubCategoryPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.CATEGORY, style: StringsStyle.categorystyle),
                  Text(Strings.SEEALL, style: StringsStyle.seeallstyle),
                ],
              )),
        ),
        Container(
            height: Get.height / 4,
            width: Get.width / 1,
            child: ListView.builder(
                itemCount: CategoryImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          top: 10, right: 15, bottom: 10, left: 10),
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
                            height: Get.height / 4,
                            width: Get.width / 3,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image:
                                            AssetImage(CategoryImages[index])),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                )),
                                Container(
                                    height: 45,
                                    child: Center(
                                        child: Text(CategoryNames[index])))
                              ],
                            )),
                      ));
                }))
      ],
    );
  }

  _topdeals() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.TOP_DEALS, style: StringsStyle.categorystyle),
              Text(Strings.SEEALL, style: StringsStyle.seeallstyle),
            ],
          ),
        ),
        Container(
            height: Get.height / 4,
            width: Get.width / 1,
            child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 10, right: 15, bottom: 10, left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.red.shade800,
                            Colors.brown.shade800
                          ]),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(1, 1))
                          ]),
                      height: Get.height / 4,
                      width: Get.width / 1.5,
                    ),
                  );
                }))
      ],
    );
  }

  _featuredproducts() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
              onTap: () {
                Get.to(FeaturedProductPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.FEATURE_PRODUCTS,
                      style: StringsStyle.categorystyle),
                  Text(Strings.SEEALL, style: StringsStyle.seeallstyle),
                ],
              )),
        ),
        Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
            child: Container(
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
                              top: 10, right: 10, bottom: 8, left: 8),
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
                                height: Get.height / 4,
                                width: Get.width / 1.5,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Stack(
                                      children: [
                                        Expanded(
                                            child: Container(
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
                                        )),
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
                                                    child: Icon(Icons.share,
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
                                                    child: Icon(Icons.bookmark,
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
                                                        Icons.shopping_cart,
                                                        size: 20,
                                                        color: HexColor(
                                                            "#CC9D76")),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
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
                                            SizedBox(height: 5),
                                            Text("AED 150.00"),
                                          ],
                                        )))
                                  ],
                                )),
                          ));
                    })))
      ],
    );
  }
}
