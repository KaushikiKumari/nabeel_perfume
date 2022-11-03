import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/change_address_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/new_address_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class MyAddressPage extends StatefulWidget {
  const MyAddressPage({Key? key}) : super(key: key);

  @override
  _MyAddressPageState createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          excludeHeaderSemantics: false,
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          title: Text(Strings.MYADDRESS_PAGE_TITLE,
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
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: Get.width / 1,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            Get.to(ChangeAddress(),
                                transition: Transition.rightToLeftWithFade,
                                duration: Duration(milliseconds: 600));
                          },
                          child: Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("HOME ADDRESS",
                                        style: TextStyle(
                                          color: AppColors.lighttextColor,
                                        )),
                                    Text("Change",
                                        style: TextStyle(
                                          color: HexColor("#CC9D76"),
                                        )),
                                  ]),
                              SizedBox(height: 15),
                              Text("124/B, BHATINDA, panjab",
                                  style: TextStyle(
                                    color: AppColors.darktextColor,
                                  )),
                              SizedBox(height: 8),
                              Text("India",
                                  style: TextStyle(
                                    color: AppColors.darktextColor,
                                  )),
                              SizedBox(height: 10),
                              Divider(),
                            ],
                          )),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: BouncingWidget(
            duration: Duration(microseconds: 700),
            scaleFactor: 1.5,
            onPressed: () {
              Get.to(NewAddress(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600));
            },
            child: Container(
                height: 60,
                width: Get.width,
                child: Center(
                    child: CommonButton(
                        text: "ADD ANOTHER ADDRESS", width: 250, height: 50))),
          ),
        ));
  }
}
