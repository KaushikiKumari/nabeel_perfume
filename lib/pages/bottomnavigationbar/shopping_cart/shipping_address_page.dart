import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/common/common_text_field.dart';
import 'package:nabeel_perfume/pages/bottomnavigationbar/shopping_cart/confirm_order_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({Key? key}) : super(key: key);

  @override
  _ShippingAddressPageState createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  final _formKey = GlobalKey<FormState>();
  bool status = false;
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
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         Get.to(SearchPage(),
          //             transition: Transition.rightToLeftWithFade,
          //             duration: Duration(milliseconds: 600));
          //       },
          //       icon: Icon(Icons.shopping_bag_outlined, color: AppColors.backgroundColor))
          // ],
          title: Text(Strings.SHIPPINGADDRESS_PAGE_TITLE,
              style: StringsStyle.storetitlestyle),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 20),
                child: Container(
                  color: HexColor("#CC9D76"),
                  child: Center(
                      child: Column(
                    children: [
                      Text("Fill in the from below so we can know exactly",
                          style: TextStyle(
                              color: Colors.white, letterSpacing: 0.5)),
                      SizedBox(height: 3),
                      Text("where to ship your order.",
                          style: TextStyle(
                              color: Colors.white, letterSpacing: 0.5)),
                    ],
                  )),
                ),
              ),
              preferredSize: Size.fromHeight(Get.height / 10)),
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
                _contactname(),
                SizedBox(height: 20),
                _emailaddress(),
                SizedBox(height: 20),
                _phonenumber(),
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
                SizedBox(height: 30),
                _setdefaultaddress(),
                SizedBox(height: 20),
              ]),
            ),
          ),
        )),
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            child: Container(
              height: 60,
              width: Get.width,
              child: Center(
                  child: BouncingWidget(
                      duration: Duration(microseconds: 700),
                      scaleFactor: 1.5,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.to(ConfirmOrderPage(),
                              transition: Transition.rightToLeftWithFade,
                              duration: Duration(milliseconds: 600));
                        }
                        ;
                      },
                      child: CommonButton(
                          text: "NEXT STEP", width: 250, height: 50))),
            )));
  }

  _contactname() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1, bottom: 8),
            labelText: "Contact Name",
            labelStyle: TextStyle(
              color: AppColors.darktextColor,
              fontSize: 15,
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please, enter your contact name";
            }

            return null;
          },
        ));
  }

  _emailaddress() {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextFormField(
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
              return "Please, enter your email address";
            }

            return null;
          },
        ));
  }

  _phonenumber() {
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

  _setdefaultaddress() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Set Default Address",
          style: TextStyle(fontSize: 15, color: AppColors.darktextColor)),
      FlutterSwitch(
        activeColor: HexColor("#CC9D76"),
        inactiveColor: Colors.black12,
        width: 43.0,
        height: 23.0,
        toggleSize: 23.0,
        value: status,
        borderRadius: 20.0,
        padding: 1.0,
        // showOnOff: true,
        onToggle: (val) {
          setState(() {
            status = val;
          });
        },
      ),
    ]);
  }
}
