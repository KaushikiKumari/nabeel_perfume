import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/home/filter_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        title: Text(Strings.SEARCH_PAGE_TITLE,
            style: StringsStyle.registertitlestyle),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(color: HexColor("#CC9D76")),
            ),
            preferredSize: Size.fromHeight(15)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              SizedBox(height: 30),
              _heading(),
              SizedBox(height: 40),
              _searchbox(),
            ]),
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
                    // Get.to(OTPSendingPage(),
                    //     transition: Transition.rightToLeftWithFade,
                    //     duration: Duration(milliseconds: 600));
                  },
                  child:
                      CommonButton(text: "SEARCH", width: 250, height: 50)))),
    );
  }

  _heading() {
    return Column(
      children: [
        Text(Strings.SEARCH_HEADING, style: StringsStyle.signinheadingstyle),
        SizedBox(height: 5),
        Text(Strings.SEARCH_SUBHEADING,
            style: StringsStyle.registerheadingsubtitle2style),
      ],
    );
  }

  _searchbox() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 50,
          alignment: Alignment.bottomLeft,
          child: TextField(
              autocorrect: true,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.only(top: 1, bottom: 8),
                labelText: "Search",
                labelStyle: TextStyle(
                  color: AppColors.darktextColor,
                  fontSize: 15,
                ),
              ))),
    );
  }
}
