import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/verfications/otp_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class OTPSendingPage extends StatefulWidget {
  const OTPSendingPage({Key? key}) : super(key: key);

  @override
  _OTPSendingPageState createState() => _OTPSendingPageState();
}

class _OTPSendingPageState extends State<OTPSendingPage> {
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
              icon: Icon(Icons.clear, color: AppColors.darktextColor, size: 30),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 150),
            CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/emailgif.gif",
                  height: 125.0,
                  width: 125.0,
                )),
            SizedBox(height: 30),
            Text(Strings.OTP_SENDING_HEADING,
                style: StringsStyle.signinheadingstyle),
            SizedBox(height: 8),
            Column(
              children: [
                Text(Strings.OTP_SENDING_SUBHEADING1,
                    style: StringsStyle.registerheadingsubtitle1style),
                SizedBox(height: 3),
                Text(Strings.OTP_SENDING_SUBHEADING2,
                    style: StringsStyle.registerheadingsubtitle2style),
              ],
            )
          ]),
        ),
      ))),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: BouncingWidget(
                  duration: Duration(microseconds: 700),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Get.to(OTPPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: CommonButton(
                      text: "OPEN MY MAIL CLIENT", width: 250, height: 50)))),
    );
  }
}
