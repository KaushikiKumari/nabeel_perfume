import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/dashboard/dashboard_controller.dart';
import 'package:nabeel_perfume/pages/verfications/forget_password_page.dart';
import 'package:nabeel_perfume/pages/verfications/register_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool securePasswordEnable = false;
  bool rememberbutton = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#CC9D76"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        excludeHeaderSemantics: false,
        backgroundColor: HexColor("#CC9D76"),
        centerTitle: true,
        title: Text(Strings.SIGNIN_PAGE_TITLE,
            style: StringsStyle.signintitlestyle),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                color: HexColor("#CC9D76"),
              ),
            ),
            preferredSize: Size.fromHeight(10)),
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
              child: Column(
                children: [
                  SizedBox(height: 20),
                  _heading(),
                  SizedBox(height: 60),
                  _idtxtfield(),
                  SizedBox(height: 30),
                  _passwordtxtfield(),
                  SizedBox(height: 20),
                  _remembermeandforgetpassword(),
                  SizedBox(height: 40),
                  _signinbutton(),
                  SizedBox(height: 60),
                  _signinwithgoogle(),
                  SizedBox(height: 15),
                  _signinwithfacebook(),
                  SizedBox(height: 20),
                  _registeroption(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _heading() {
    return Column(
      children: [
        Text(Strings.SIGNIN_HEADING, style: StringsStyle.signinheadingstyle),
        SizedBox(height: 5),
        Text(Strings.SIGNIN_SUBHEADING,
            style: StringsStyle.signinsubheadingstyle)
      ],
    );
  }

  _idtxtfield() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Username or email",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your username or emailid";
            }

            return null;
          },
        ));
  }

  _passwordtxtfield() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _passwordController,
          autocorrect: true,
          textAlignVertical: TextAlignVertical.bottom,
          obscureText: securePasswordEnable,
          decoration: InputDecoration(
            suffix: InkWell(
              onTap: () {
                setState(() {
                  securePasswordEnable = securePasswordEnable ? false : true;
                });
              },
              child: Icon(
                !securePasswordEnable
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 25,
                color: HexColor("#CC9D76"),
              ),
            ),
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Password",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter the password";
            }
            if (value.trim().length < 6) {
              return "Password has more than 5 characters";
            }
            return null;
          },
        ));
  }

  _remembermeandforgetpassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          IconButton(
              onPressed: () {
                setState(() {
                  rememberbutton = rememberbutton ? false : true;
                });
              },
              icon: !rememberbutton
                  ? Icon(
                      Icons.check_box,
                      color: HexColor("#CC9D76"),
                    )
                  : Icon(Icons.check_box_outline_blank_outlined,
                      color: Colors.grey, size: 30)),
          Text(Strings.REMEMBER_ME)
        ]),
        InkWell(
            onTap: () {
              Get.to(ForgetPasswordPage(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600));
            },
            child: Text(Strings.FORGET_PASS))
      ],
    );
  }

  _signinbutton() {
    return BouncingWidget(
        duration: Duration(microseconds: 700),
        scaleFactor: 1.5,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.to(DashboardController(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(milliseconds: 600));
          }
        },
        child: CommonButton(text: "SIGN IN", width: 300, height: 50));
  }

  _signinwithgoogle() {
    return BouncingWidget(
      duration: Duration(microseconds: 700),
      scaleFactor: 1.5,
      onPressed: () {
        // Get.to(BottomNavigationBarPage(),
        //     transition: Transition.rightToLeftWithFade,
        //     duration: Duration(milliseconds: 600));
      },
      child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(Strings.GOOGLE, style: StringsStyle.googletitlestyle),
              Text(Strings.CONTINUEWITHGOOGLE,
                  style: StringsStyle.continuewithgoogletitlestyle),
            ],
          )),
    );
  }

  _signinwithfacebook() {
    return BouncingWidget(
        duration: Duration(microseconds: 700),
        scaleFactor: 1.5,
        onPressed: () {
          // Get.to(BottomNavigationBarPage(),
          //     transition: Transition.rightToLeftWithFade,
          //     duration: Duration(milliseconds: 600));
        },
        child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(Strings.FACEBOOK, style: StringsStyle.facebooktitlestyle),
                Text(Strings.CONTINUEWITHFACEBOOK,
                    style: StringsStyle.continuewithfacebooktitlestyle),
              ],
            )));
  }

  _registeroption() {
    return InkWell(
        onTap: () {
          Get.to(RegisterPage(),
              transition: Transition.rightToLeftWithFade,
              duration: Duration(milliseconds: 600));
        },
        child: Text(Strings.SIGNUPOPTIONTEXT,
            style: TextStyle(letterSpacing: 0.3)));
  }
}
