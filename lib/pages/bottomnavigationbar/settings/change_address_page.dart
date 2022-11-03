import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/common/common_text_field.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ChangeAddress extends StatefulWidget {
  const ChangeAddress({Key? key}) : super(key: key);

  @override
  _ChangeAddressState createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
  bool status = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#CC9D76"),
        appBar: AppBar(
          elevation: 0,
          excludeHeaderSemantics: false,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          title: Text("CHANGE ADDRESS", style: StringsStyle.storetitlestyle),
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
                _addressline1(),
                SizedBox(height: 20),
                CommonTextField(text: "Address Line 2"),
                SizedBox(height: 20),
                _choosecountry(),
                SizedBox(height: 20),
                _choosecity(),
                SizedBox(height: 20),
                _zipcode(),
                SizedBox(height: 300),
              ]),
            ),
          ),
        )),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: BouncingWidget(
            duration: Duration(microseconds: 700),
            scaleFactor: 1.5,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Get.back();
                Get.snackbar(
                  "address has been changed successfully",
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
            },
            child: Container(
                height: 60,
                width: Get.width,
                child: Center(
                    child: CommonButton(
                        text: "SAVE CHANGES", width: 250, height: 50))),
          ),
        ));
  }

  _addressline1() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Address Line 1",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your address";
            }

            return null;
          },
        ));
  }

  _choosecountry() {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 50,
          alignment: Alignment.bottomLeft,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 1, bottom: 8),
              labelText: "Country",
              labelStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
              suffixIcon: PopupMenuButton<String>(
                  onSelected: (value) {
                    Get.snackbar(
                      "Changes saved with success",
                      "just now",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: AppColors.lighttextColor,
                      backgroundColor: AppColors.backgroundColor,
                      boxShadows: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey.shade200,
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        ),
                      ],
                      margin: EdgeInsets.all(15),
                    );
                  },
                  icon: Icon(Icons.keyboard_arrow_right_outlined),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Text("India"),
                        value: "",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Japan",
                        ),
                        value: "",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "America",
                        ),
                        value: "America",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Korea",
                        ),
                        value: "",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Chaina",
                        ),
                        value: "",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Itli",
                        ),
                        value: "",
                      ),
                    ];
                  }),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your Country or  choose it";
              }

              return null;
            },
          )),
    );
  }

  _choosecity() {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 50,
          alignment: Alignment.bottomLeft,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 1, bottom: 8),
              labelText: "City",
              labelStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
              suffixIcon: PopupMenuButton<String>(
                  onSelected: (value) {
                    Get.snackbar(
                      "Changes saved with success",
                      "just now",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: AppColors.lighttextColor,
                      backgroundColor: AppColors.backgroundColor,
                      boxShadows: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey.shade200,
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        ),
                      ],
                      margin: EdgeInsets.all(15),
                    );
                  },
                  icon: Icon(Icons.keyboard_arrow_right_outlined),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Text("Bihar"),
                        value: "Bihar",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Delhi",
                        ),
                        value: "Delhi",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Bhtinda",
                        ),
                        value: "Bhtinda",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Fridabad",
                        ),
                        value: "Fridabad",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Lukhnow",
                        ),
                        value: "Lukhnow",
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Ranchi",
                        ),
                        value: "Ranchi",
                      ),
                    ];
                  }),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your City or  choose it";
              }

              return null;
            },
          )),
    );
  }

  _zipcode() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Zip Code",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your zipcode";
            }

            return null;
          },
        ));
  }
}
