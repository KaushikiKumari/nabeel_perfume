import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/utils/colors.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#CC9D76"),
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.whiteColor),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              SizedBox(height: 40),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      SizedBox(height: 50),
                      _editnametxtfield(),
                      SizedBox(height: 20),
                      _editemailtxtfield(),
                      SizedBox(height: 20),
                      _editphonenumbertxtfield(),
                      SizedBox(height: 20),
                      SizedBox(height: 50),
                      Center(
                        child: FlatButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Get.back();
                                Get.snackbar("Profile updated",
                                    "profile updated successfully!");
                              }
                              ;
                            },
                            child: CommonButton(
                                text: "SAVE", width: 250, height: 50)),
                      )
                    ]),
                  )),
            ],
          ),
        ));
  }

  _header() {
    return Stack(
      children: [
        Container(
            height: Get.height / 5,
            width: Get.width / 1,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey.shade300,
                    offset: Offset(1, 3),
                    spreadRadius: 3,
                  ),
                ],
                color: HexColor("#CC9D76"),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200)))),
        Padding(
          padding: const EdgeInsets.only(right: 140, left: 140, top: 80),
          child: Positioned(
            bottom: 0,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(MyProfile(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage("assets/images/dp.png"),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Center(
                            child: Icon(
                          Icons.camera_alt_outlined,
                          color: HexColor("#CC9D76"),
                        ))))
              ],
            ),
          ),
        ),
      ],
    );
  }

  _editnametxtfield() {
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
              hintText: "Kaushiki kumari",
              hintStyle: TextStyle(
                color: AppColors.lighttextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your new name";
              }

              return null;
            },
          ),
        ));
  }

  _editemailtxtfield() {
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
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 8, right: 8),
              hintText: "Kaushikikumari123@gmail.com",
              hintStyle: TextStyle(
                color: AppColors.lighttextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your new email address";
              }

              return null;
            },
          ),
        ));
  }

  _editphonenumbertxtfield() {
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
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 8, right: 8),
              hintText: "1234567899",
              hintStyle: TextStyle(
                color: AppColors.lighttextColor,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your new phone number";
              }

              return null;
            },
          ),
        ));
  }
}
