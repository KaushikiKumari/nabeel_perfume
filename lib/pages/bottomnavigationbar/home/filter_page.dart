import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/range_filter.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/search_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int selectedcategory = -1;
  int selectedfilter = -1;

  var Category = [
    "All Perfumes",
    "Collections",
    "Expensive",
    "Limited Edition",
    "Men",
    "Womens",
  ];
  var Sort = [
    "Price",
    "popularity",
    "Spray perfumes",
    "Oil perfumes",
    "Rating",
    "Gift set",
  ];
  var CategoryName = [
    "Drinks",
    "Cack",
    "Pizza",
    "Burger",
    "Pasta",
    "Pestry",
    "BreadSlice",
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
        title: Text(Strings.FILTER_PAGE_TITLE,
            style: StringsStyle.registertitlestyle),
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
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, bottom: 15, right: 10, top: 30),
                child: Text(
                  "Select categories",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 2.4,
                    ),
                    itemCount: Category.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedcategory = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedcategory == index
                                ? HexColor("#CC9D76")
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              Category[index],
                              style: TextStyle(
                                color: selectedcategory == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, bottom: 15, right: 10, top: 50),
                child: Text(
                  "Sort perfumes by",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 2.4,
                    ),
                    itemCount: Sort.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedfilter = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedfilter == index
                                ? HexColor("#CC9D76")
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              Sort[index],
                              style: TextStyle(
                                color: selectedfilter == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, bottom: 15, right: 10, top: 50),
                child: Text(
                  "Select a price range",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: RangeFilter(),
              ),
              SizedBox(height: 20),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Container(
            height: 130,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: BouncingWidget(
                      duration: Duration(microseconds: 700),
                      scaleFactor: 1.5,
                      onPressed: () {
                        Get.back();
                        Get.snackbar(
                          "Filter Applied successfully",
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
                      child:
                          CommonButton(text: "APPLY", width: 250, height: 50),
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                    child: BouncingWidget(
                        duration: Duration(microseconds: 700),
                        scaleFactor: 1.5,
                        onPressed: () {
                          Get.snackbar(
                            "filter is clear",
                            "now!",
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
                            text: "CLEAR FILTERS", width: 250, height: 50))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
