import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/product_detail_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/my_collections/products_delete_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
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
        body: SingleChildScrollView(
            child: Container(
                width: Get.width / 1,
                height: Get.height,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Products you might like",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.darktextColor,
                                letterSpacing: 0.5)),
                      ),
                      SizedBox(height: 5),
                      Column(children: [
                        Text("To remove an term, simply long tap",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            )),
                        SizedBox(height: 2),
                        Text(" on the product.",
                            style: TextStyle(
                              color: AppColors.lighttextColor,
                            ))
                      ]),
                      SizedBox(height: 20),
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
                                          duration:
                                              Duration(milliseconds: 600));
                                    },
                                    onTap: () {
                                      Get.to(ProductDetailPage(),
                                          transition:
                                              Transition.rightToLeftWithFade,
                                          duration:
                                              Duration(milliseconds: 800));
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
                                                    topLeft:
                                                        Radius.circular(15),
                                                    topRight:
                                                        Radius.circular(15)),
                                              ),
                                            )),
                                            Container(
                                                height: 60,
                                                child: Center(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(CategoryNames[
                                                              index]),
                                                          SizedBox(height: 5),
                                                          Text("AED 150.00"),
                                                        ],
                                                      ),
                                                      SizedBox(width: 10),
                                                      CircleAvatar(
                                                          backgroundColor:
                                                              Colors
                                                                  .orange[100],
                                                          child: Center(
                                                              child: Icon(
                                                            Icons.bookmark,
                                                            color: HexColor(
                                                                "#CC9D76"),
                                                          )))
                                                    ],
                                                  ),
                                                )))
                                          ],
                                        )),
                                  ),
                                );
                              })),
                    ],
                  ),
                ))));
  }
}
