import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/dashboard/dashboard_controller.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  int second = 60;
  // Future<int> updatetime() async {
  //   if (second == 0) {
  //     return 0;
  //   } else {
  //     Timer(Duration(seconds: 1), () {
  //       setState(() {
  //         second = second - 1;
  //       });
  //       print(second);
  //       return updatetime();
  //     });
  //   }
  // }

  @override
//  int initState() {
//     // TODO: implement initState
//     super.initState();
//     updatetime();
//   }

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
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(Strings.OTP_HEADING,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.darktextColor,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              Text("1 222 555 6677",
                  style: TextStyle(
                    fontSize: 20,
                    color: HexColor("#CC9D76"),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              Column(
                children: [
                  Text(Strings.OTP_SUBHEADING1,
                      style: StringsStyle.registerheadingsubtitle1style),
                  SizedBox(height: 3),
                  Text(Strings.OTP_SUBHEADING2,
                      style: StringsStyle.registerheadingsubtitle2style),
                ],
              ),
              SizedBox(height: 50),
              Container(
                height: 80.0,
                child: GestureDetector(
                  child: PinCodeTextField(
                    autofocus: true,
                    hideCharacter: true,
                    defaultBorderColor: Colors.grey,
                    hasTextBorderColor: HexColor("#CC9D76"),
                    onTextChanged: (text) {},
                    // onDone: (text) {
                    //   print("DONE $text");
                    //   print("DONE CONTROLLER ${controller.text}");
                    // },
                    pinBoxWidth: 50,
                    pinBoxHeight: 64,
                    hasUnderline: true,

                    wrapAlignment: WrapAlignment.spaceAround,
                    pinBoxDecoration:
                        ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                    pinTextStyle: TextStyle(fontSize: 15.0),
                    pinTextAnimatedSwitcherTransition:
                        ProvidedPinBoxTextAnimation.scalingTransition,
                    pinTextAnimatedSwitcherDuration:
                        Duration(milliseconds: 300),
                    highlightAnimation: true,
                    highlightAnimationBeginColor: HexColor("#CC9D76"),
                    highlightAnimationEndColor: HexColor("#CC9D76"),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(height: 100),
              BouncingWidget(
                duration: Duration(microseconds: 700),
                scaleFactor: 1.5,
                onPressed: () {
                  Get.to(DashboardController(),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(milliseconds: 600));
                },
                child: CommonButton(text: "CONFIRM", width: 300, height: 50),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend confirmation code",
                      style: TextStyle(
                          color: second == 0
                              ? Colors.black
                              : AppColors.darktextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      second == 0 ? "" : " (" + second.toString() + " sec )",
                      style: TextStyle(
                          color: AppColors.darktextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          )),
        )));
  }
}
