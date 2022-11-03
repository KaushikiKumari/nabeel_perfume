import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/order_tracking_page.dart';
import 'package:nabeel_perfume/pages/dashboard/dashboard_controller.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class OrderPlacedPage extends StatefulWidget {
  const OrderPlacedPage({Key? key}) : super(key: key);

  @override
  _OrderPlacedPageState createState() => _OrderPlacedPageState();
}

class _OrderPlacedPageState extends State<OrderPlacedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon:
                    Icon(Icons.clear, color: AppColors.darktextColor, size: 30),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Center(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 150),
              CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/orderplaced.gif",
                    height: 125.0,
                    width: 125.0,
                  )),
              SizedBox(height: 30),
              Text("Order placed", style: StringsStyle.signinheadingstyle),
              SizedBox(height: 8),
              Column(
                children: [
                  Text("Your order #213456 was placed with success",
                      style: StringsStyle.registerheadingsubtitle1style),
                  SizedBox(height: 3),
                  Text("You can see the status of the order at any time",
                      style: StringsStyle.registerheadingsubtitle2style),
                ],
              )
            ]),
          ),
        ))),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            height: 120,
            child: Column(
              children: [
                BouncingWidget(
                  duration: Duration(microseconds: 700),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Get.to(PackageDeliveryTrackingPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Container(
                      height: 50,
                      width: Get.width,
                      child: Center(
                          child: CommonButton(
                              text: "SEE ORDER STATUS",
                              width: 250,
                              height: 50))),
                ),
                SizedBox(height: 10),
                BouncingWidget(
                  duration: Duration(microseconds: 700),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Get.to(DashboardController(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: Container(
                      height: 50,
                      width: Get.width,
                      child: Center(
                          child: CommonButton(
                              text: "CLOSE", width: 250, height: 50))),
                ),
              ],
            ),
          ),
        ));
  }
}
