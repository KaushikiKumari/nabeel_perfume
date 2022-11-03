import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/common/common_text_field.dart';
import 'package:nabeel_perfume/pages/verfications/signin_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        title: Text(Strings.REGISTER_PAGE_TITLE,
            style: StringsStyle.signintitlestyle),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(color: HexColor("#CC9D76")),
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
                  _usernametxtfield(),
                  SizedBox(height: 20),
                  _idtxtfield(),
                  SizedBox(height: 20),
                  _passwordtxtfield(),
                  SizedBox(height: 20),
                  _phonenumbertxtfield(),
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
        Text(Strings.REGISTER_HEADING, style: StringsStyle.signinheadingstyle),
        SizedBox(height: 5),
        Text(Strings.REGISTER_SUBHEADING1,
            style: StringsStyle.signinsubheadingstyle),
        SizedBox(height: 5),
        Text(Strings.REGISTER_SUBHEADING2,
            style: StringsStyle.signinsubheadingstyle)
      ],
    );
  }

  _usernametxtfield() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Username",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your username";
            }

            return null;
          },
        ));
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
            labelText: "Email",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your emailid";
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
                  color: Colors.orange),
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

  _phonenumbertxtfield() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Phone Number",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your phone number";
            }

            return null;
          },
        ));
  }

  _signinbutton() {
    return BouncingWidget(
        duration: Duration(microseconds: 700),
        scaleFactor: 1.5,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.to(SignInPage(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(milliseconds: 600));
          }
        },
        child: CommonButton(text: "SIGN UP", width: 300, height: 50));
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
          Get.to(SignInPage(),
              transition: Transition.rightToLeftWithFade,
              duration: Duration(milliseconds: 600));
        },
        child: Text("Already have an account? Sign In",
            style: TextStyle(letterSpacing: 0.3)));
  }
}
