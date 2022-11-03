import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/choose_address_page.dart';

import 'package:nabeel_perfume/utils/colors.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  var CategoryImages = [
    "assets/images/product3.png",
  ];
  var CategoryNames = [
    "Spray perfumes",
  ];
  int cart_item = 0;
  void increment() {
    setState(() {
      cart_item++;
    });
  }

  void decrement() {
    setState(() {
      if (cart_item >= 1) {
        cart_item--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
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
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: AppColors.lighttextColor,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.lighttextColor)),
                      Text("AED 302.6",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darktextColor))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: BouncingWidget(
                    duration: Duration(microseconds: 700),
                    scaleFactor: 1.5,
                    onPressed: () {
                      Get.to(ChooseAddressPage(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(milliseconds: 600));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: HexColor("#CC9D76"),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: Get.width / 1,
                        child: Center(
                          child: Text("CONTINUE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 0.5,
                              )),
                        ))))));
  }

  _productlist() {
    return Container(
        width: Get.width / 1,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            primary: true,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: CategoryImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 15, bottom: 10, left: 10),
                child: Container(
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
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade400,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(1, 1))
                                ],
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
                              width: Get.width / 1 - 200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(CategoryNames[index]),
                                  Icon(Icons.clear)
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Text("AED 150.99",
                                style: TextStyle(
                                    color: AppColors.darktextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17)),
                            SizedBox(height: 10),
                            Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8, left: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          decrement();
                                        },
                                        child: Icon(Icons.remove,
                                            color: Colors.black54, size: 20),
                                      ),
                                      SizedBox(width: 10),
                                      Text(cart_item.toString(),
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Ubuntu-Regular",
                                          )),
                                      SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          increment();
                                        },
                                        child: Icon(Icons.add,
                                            color: Colors.black54, size: 20),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(height: 10),
                          ],
                        )
                      ],
                    )),
              );
            }));
  }
}
