import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/verfications/otp_sending_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
        title: Text(Strings.FORGETPASSWORD_PAGE_TITLE,
            style: StringsStyle.registertitlestyle),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                color: AppColors.appbackgroundColor,
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
              child: Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(height: 20),
                  _heading(),
                  SizedBox(height: 50),
                  _emailtextfield(),
                  SizedBox(height: 400),
                ]),
              ),
            )),
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
                    if (_formKey.currentState!.validate()) {
                      Get.to(OTPSendingPage(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(milliseconds: 600));
                    }
                  },
                  child: CommonButton(
                      text: "RECOVER EMAIL", width: 250, height: 50)))),
    );
  }

  _heading() {
    return Column(
      children: [
        Text(Strings.FORGETPASSWORD_HEADING,
            style: StringsStyle.signinheadingstyle),
        SizedBox(height: 8),
        Column(
          children: [
            Text(Strings.FORGETPASSWORD_SUBHEADING1,
                style: StringsStyle.registerheadingsubtitle1style),
            SizedBox(height: 3),
            Text(Strings.FORGETPASSWORD_SUBHEADING2,
                style: StringsStyle.registerheadingsubtitle2style),
          ],
        )
      ],
    );
  }

  _emailtextfield() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 50,
          alignment: Alignment.bottomLeft,
          child: TextFormField(
            autocorrect: true,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 1, bottom: 8),
              labelText: "Email address",
              labelStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "enter your email address please!";
              }

              return null;
            },
          )),
    );
  }
}
