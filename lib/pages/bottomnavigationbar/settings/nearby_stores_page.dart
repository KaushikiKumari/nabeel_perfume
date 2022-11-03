import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/my_address_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/settings/new_address_page.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/shipping_address_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class NearbyStoresPage extends StatefulWidget {
  const NearbyStoresPage({Key? key}) : super(key: key);

  @override
  _NearbyStoresPageState createState() => _NearbyStoresPageState();
}

class _NearbyStoresPageState extends State<NearbyStoresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                height: Get.height / 2,
                width: Get.width / 1,
                color: Colors.red[100],
                child: Center(child: Text("here will be map view"))),
            SizedBox(height: 50),
            Text(
              Strings.MAPPAGEHEADING,
              style: StringsStyle.registerheadingstyle,
            ),
            SizedBox(height: 10),
            Text(
              Strings.MAPPAGESUBHEADING,
              style: StringsStyle.registerheadingsubtitle2style,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.send,
                        color: HexColor("#CC9D76"),
                      ),
                      labelText: "Address",
                      labelStyle: TextStyle(
                        fontSize: 14,
                      ))),
            ),
            SizedBox(height: 10),
            BouncingWidget(
              duration: Duration(microseconds: 700),
              scaleFactor: 1.5,
              onPressed: () {
                Get.to(MyAddressPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              child: CommonButton(text: "NEXT", width: 300, height: 50),
            ),
            SizedBox(height: 10),
            BouncingWidget(
              duration: Duration(microseconds: 700),
              scaleFactor: 1.5,
              onPressed: () {
                Get.to(NewAddress(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              child:
                  CommonButton(text: "ADD IT MANUALLY", width: 300, height: 50),
            ),
            SizedBox(height: 10),
          ],
        )));
  }
}
