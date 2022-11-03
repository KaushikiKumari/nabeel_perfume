import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class MyCardsPage extends StatefulWidget {
  const MyCardsPage({Key? key}) : super(key: key);

  @override
  _MyCardsPageState createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
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
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.delete_outline,
                    color: AppColors.backgroundColor))
          ],
          title: Text(Strings.MYCARDS_PAGE_TITLE,
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
            child: Column(
          children: [
            _cardslider(),
            SizedBox(height: 30),
            Container(
                width: Get.width,
                height: Get.height / 1,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      TextField(
                          decoration: InputDecoration(
                              labelText: "Card Number",
                              labelStyle: TextStyle(
                                fontSize: 14,
                              ))),
                      SizedBox(height: 15),
                      TextField(
                          decoration: InputDecoration(
                              labelText: "Cardholder Name",
                              labelStyle: TextStyle(
                                fontSize: 14,
                              ))),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: 130,
                            child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: PopupMenuButton<String>(
                                        onSelected: (value) {
                                          Get.snackbar(
                                            "Changes saved with success",
                                            "just now",
                                            snackPosition: SnackPosition.BOTTOM,
                                            colorText: AppColors.lighttextColor,
                                            backgroundColor:
                                                AppColors.backgroundColor,
                                            boxShadows: [
                                              BoxShadow(
                                                blurRadius: 1,
                                                color: Colors.grey.shade200,
                                                offset: Offset(0, 2),
                                                spreadRadius: 2,
                                              ),
                                            ],
                                            margin: EdgeInsets.all(15),
                                          );
                                        },
                                        icon: Icon(Icons
                                            .keyboard_arrow_right_outlined),
                                        itemBuilder: (BuildContext context) {
                                          return [
                                            PopupMenuItem(
                                              child: Text("2018"),
                                              value: "Bihar",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "2019",
                                              ),
                                              value: "Delhi",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "2020",
                                              ),
                                              value: "Bhtinda",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "2021",
                                              ),
                                              value: "Fridabad",
                                            ),
                                          ];
                                        }),
                                    labelText: "Year",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                    ))),
                          ),
                          SizedBox(width: 30),
                          Container(
                            width: 130,
                            child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: PopupMenuButton<String>(
                                        onSelected: (value) {
                                          Get.snackbar(
                                            "Changes saved with success",
                                            "just now",
                                            snackPosition: SnackPosition.BOTTOM,
                                            colorText: AppColors.lighttextColor,
                                            backgroundColor:
                                                AppColors.backgroundColor,
                                            boxShadows: [
                                              BoxShadow(
                                                blurRadius: 1,
                                                color: Colors.grey.shade200,
                                                offset: Offset(0, 2),
                                                spreadRadius: 2,
                                              ),
                                            ],
                                            margin: EdgeInsets.all(15),
                                          );
                                        },
                                        icon: Icon(Icons
                                            .keyboard_arrow_right_outlined),
                                        itemBuilder: (BuildContext context) {
                                          return [
                                            PopupMenuItem(
                                              child: Text("february"),
                                              value: "Bihar",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "march",
                                              ),
                                              value: "Delhi",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "april",
                                              ),
                                              value: "Bhtinda",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "may",
                                              ),
                                              value: "Fridabad",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "june",
                                              ),
                                              value: "Fridabad",
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                "july",
                                              ),
                                              value: "Fridabad",
                                            ),
                                          ];
                                        }),
                                    labelText: "Month",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                    ))),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      TextField(
                          decoration: InputDecoration(
                              labelText: "Cardholder Name",
                              labelStyle: TextStyle(
                                fontSize: 14,
                              ))),
                    ],
                  ),
                )),
          ],
        )),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
              height: 60,
              width: Get.width,
              child: Center(
                  child: CommonButton(
                      text: "ADD NEW CARD", width: 250, height: 50))),
        ));
  }

  _cardslider() {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.ac_unit_outlined,
                            color: Colors.white60, size: 30)),
                    Text("01/2025",
                        style: TextStyle(
                          color: Colors.white60,
                        ))
                  ],
                ),
                SizedBox(height: 15),
                Text("1234 5678 9012 1234",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card Holder",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white60,
                              )),
                          SizedBox(height: 5),
                          Text("Kaushiki kumari",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ),

        //2nd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.ac_unit_outlined,
                            color: Colors.white60, size: 30)),
                    Text("01/2025",
                        style: TextStyle(
                          color: Colors.white60,
                        ))
                  ],
                ),
                SizedBox(height: 15),
                Text("1234 5678 9012 1234",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card Holder",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white60,
                              )),
                          SizedBox(height: 5),
                          Text("Kaushiki kumari",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ),

        //3rd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.ac_unit_outlined,
                            color: Colors.white60, size: 30)),
                    Text("01/2025",
                        style: TextStyle(
                          color: Colors.white60,
                        ))
                  ],
                ),
                SizedBox(height: 15),
                Text("1234 5678 9012 1234",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card Holder",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white60,
                              )),
                          SizedBox(height: 5),
                          Text("Kaushiki kumari",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 220,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
