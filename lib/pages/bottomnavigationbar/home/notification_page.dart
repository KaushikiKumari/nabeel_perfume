import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          title: Text("NOTIFICATIONS", style: StringsStyle.registertitlestyle),
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
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('RECENT',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500)),
                      ),
                      Divider(),
                      Container(
                        // width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 2.6,
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.height / 1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: HexColor("#CC9D76"),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                                child: Icon(Icons.clear,
                                                    color: Colors.white)),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  'Will Chase has invited you to',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text('join the FBI group Order',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text('12 HOURS AGO',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          )
                                        ]),
                                  )),
                            );
                          },
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('YESTURDAY',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500)),
                      ),
                      Divider(),
                      Container(
                        // width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 2.6,
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.height / 1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: HexColor("#CC9D76"),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                                child: Icon(Icons.clear,
                                                    color: Colors.white)),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  'Will Chase has invited you to',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text('join the FBI group Order',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text('12 HOURS AGO',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          )
                                        ]),
                                  )),
                            );
                          },
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }
}
