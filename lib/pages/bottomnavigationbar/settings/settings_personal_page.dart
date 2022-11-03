import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/password_change_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  _MySettingsState createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  bool status = false;
  bool status1 = false;
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
        title: Text("SETTINGS", style: StringsStyle.storetitlestyle),
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
            height: Get.height / 1,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("LANGUAGE",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                )),
                            SizedBox(height: 5),
                            Text("English",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                )),
                          ],
                        ),
                        // InkWell(
                        //   onTap: () {

                        //   },
                        //   child: Text("Change",
                        //       style: TextStyle(
                        //         color: HexColor("#CC9D76"),
                        //       )),
                        // ),
                        PopupMenuButton<String>(
                            onSelected: (value) {
                              Get.snackbar(
                                "Changes saved with success",
                                "just now",
                                snackPosition: SnackPosition.BOTTOM,
                                colorText: AppColors.lighttextColor,
                                backgroundColor: AppColors.backgroundColor,
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
                            child: Text("Change",
                                style: TextStyle(
                                  color: HexColor("#CC9D76"),
                                )),
                            itemBuilder: (BuildContext context) {
                              return [
                                PopupMenuItem(
                                  child: Text("English"),
                                  value: "English",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Hindi",
                                  ),
                                  value: "Hindi",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "French",
                                  ),
                                  value: "French",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Marathi",
                                  ),
                                  value: "Marathi",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Telgu",
                                  ),
                                  value: "Telgu",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Malayalam",
                                  ),
                                  value: "Telgu",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Kannad",
                                  ),
                                  value: "Telgu",
                                ),
                              ];
                            }),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PASSWORD",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                )),
                            SizedBox(height: 5),
                            Text(". . . . . . . . . . . .",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                )),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(PasswordChangePage(),
                                transition: Transition.rightToLeftWithFade,
                                duration: Duration(milliseconds: 600));
                          },
                          child: Text("Change",
                              style: TextStyle(
                                color: HexColor("#CC9D76"),
                              )),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("LOCATION",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                )),
                            SizedBox(height: 5),
                            Text("Bhatinda",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                )),
                          ],
                        ),
                        PopupMenuButton<String>(
                            onSelected: (value) {
                              Get.snackbar(
                                "Changes saved with success",
                                "just now",
                                snackPosition: SnackPosition.BOTTOM,
                                colorText: AppColors.lighttextColor,
                                backgroundColor: AppColors.backgroundColor,
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
                            child: Text("Edit",
                                style: TextStyle(
                                  color: HexColor("#CC9D76"),
                                )),
                            itemBuilder: (BuildContext context) {
                              return [
                                PopupMenuItem(
                                  child: Text("Bihar"),
                                  value: "Bihar",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Delhi",
                                  ),
                                  value: "Delhi",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Bhtinda",
                                  ),
                                  value: "Bhtinda",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Fridabad",
                                  ),
                                  value: "Fridabad",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Lukhnow",
                                  ),
                                  value: "Lukhnow",
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    "Ranchi",
                                  ),
                                  value: "Ranchi",
                                ),
                              ];
                            }),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("RECEIVE NOTIFICATIONS",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                )),
                            SizedBox(height: 5),
                            Text("Enabled",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                )),
                          ],
                        ),
                        FlutterSwitch(
                          activeColor: HexColor("#CC9D76"),
                          inactiveColor: Colors.black12,
                          width: 43.0,
                          height: 23.0,
                          toggleSize: 23.0,
                          value: status,
                          borderRadius: 20.0,
                          padding: 1.0,
                          // showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("RECEIVE NEWSLETTERS",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                )),
                            SizedBox(height: 5),
                            Text("Disabled",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                )),
                          ],
                        ),
                        FlutterSwitch(
                          activeColor: HexColor("#CC9D76"),
                          inactiveColor: Colors.black12,
                          width: 43.0,
                          height: 23.0,
                          toggleSize: 23.0,
                          value: status1,
                          borderRadius: 20.0,
                          padding: 1.0,
                          // showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status1 = val;
                            });
                          },
                        ),
                      ]),
                ],
              ),
            )),
      ),
    );
  }
}
