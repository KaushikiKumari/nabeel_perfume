import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class PasswordChangePage extends StatefulWidget {
  const PasswordChangePage({Key? key}) : super(key: key);

  @override
  _PasswordChangePageState createState() => _PasswordChangePageState();
}

class _PasswordChangePageState extends State<PasswordChangePage> {
  final _formKey = GlobalKey<FormState>();
  bool securePasswordEnable = false;
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
          title: Text("PASSWORD CHANGE", style: StringsStyle.storetitlestyle),
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
            height: Get.height,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text("Old Password"),
                    SizedBox(height: 10),
                    _oldpasswordtxtfield(),
                    SizedBox(height: 30),
                    Text("New Password"),
                    SizedBox(height: 10),
                    _newpasswordtxtfield(),
                    SizedBox(height: 10),
                    _confirmpasswordtxtfield(),
                    SizedBox(height: 50),
                    Center(
                      child: BouncingWidget(
                          duration: Duration(microseconds: 700),
                          scaleFactor: 1.5,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.back();
                              Get.snackbar(
                                "password changed successfully",
                                "just now",
                                snackPosition: SnackPosition.TOP,
                                colorText: AppColors.lighttextColor,
                                backgroundColor: AppColors.backgroundColor,
                                boxShadows: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.grey.shade300,
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                                margin: EdgeInsets.all(15),
                              );
                            }
                            ;
                          },
                          child: CommonButton(
                              text: "SAVE", width: 250, height: 50)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  _oldpasswordtxtfield() {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: Center(
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autocorrect: true,
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 8, right: 8),
              hintText: "Old password",
              hintStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your old password";
              }

              return null;
            },
          ),
        ));
  }

  _newpasswordtxtfield() {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: Center(
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autocorrect: true,
            obscureText: securePasswordEnable,
            decoration: InputDecoration(
              border: InputBorder.none,
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
              contentPadding: EdgeInsets.only(left: 8, right: 8),
              hintText: "New password",
              hintStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your new password";
              }
              if (value.trim().length < 6) {
                return "Password has more than 5 characters";
              }
              return null;
            },
          ),
        ));
  }

  _confirmpasswordtxtfield() {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: Center(
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autocorrect: true,
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 8, right: 8),
              hintText: "Confirm password",
              hintStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, confirm your new password";
              }

              return null;
            },
          ),
        ));
  }
}
