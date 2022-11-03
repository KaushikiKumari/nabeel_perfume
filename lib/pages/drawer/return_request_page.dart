import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class ReturnRequestPage extends StatefulWidget {
  const ReturnRequestPage({Key? key}) : super(key: key);

  @override
  _ReturnRequestPageState createState() => _ReturnRequestPageState();
}

class _ReturnRequestPageState extends State<ReturnRequestPage> {
  bool isExpand = false;
  var selectedoption = -1;
  bool acceptagreement = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          excludeHeaderSemantics: false,
          backgroundColor: HexColor("#CC9D76"),
          centerTitle: true,
          title: Center(
            child:
                Text('RETURN REQUEST', style: StringsStyle.registertitlestyle),
          ),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                child: Container(
                  color: HexColor("#CC9D76"),
                ),
              ),
              preferredSize: Size.fromHeight(12)),
        ),
        backgroundColor: HexColor("#CC9D76"),
        body: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _firstnametextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _lastnametextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _emailaddresstextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _phonenumbertextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _orderidtextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _orderdatetextfield(),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Product Detail",
                            style: TextStyle(
                              color: AppColors.darktextColor,
                              fontSize: 16,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        _productnametextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _productcodetextfield(),
                        SizedBox(
                          height: 15,
                        ),
                        _productquantitytextfield(),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Reason of Return",
                            style: TextStyle(
                              color: AppColors.darktextColor,
                              fontSize: 16,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        _deadonarrival(),
                        _productfaultytextfield(),
                        SizedBox(
                          height: 25,
                        ),
                        Row(children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  acceptagreement =
                                      acceptagreement ? false : true;
                                });
                              },
                              icon: !acceptagreement
                                  ? Icon(
                                      Icons.check_box,
                                      color: HexColor("#CC9D76"),
                                    )
                                  : Icon(Icons.check_box_outline_blank_outlined,
                                      color: Colors.grey, size: 30)),
                          Text(
                              "I have read and agree to the Terms &\nConditions")
                        ]),
                      ]),
                ),
              )),
        ),
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
                          // Get.to(AnimatedDrawerController(),
                          //     transition: Transition.rightToLeftWithFade,
                          //     duration: Duration(milliseconds: 600));
                          Get.back();
                          Get.snackbar(
                            "Request sended successfully",
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
                      child: CommonButton(
                          text: "SUBMIT", width: 250, height: 50))),
            )));
  }

  _firstnametextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "First Name",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your first name here!";
              }

              return null;
            },
          ),
        ));
  }

  _lastnametextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Last Name",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your last name here!";
              }

              return null;
            },
          ),
        ));
  }

  _emailaddresstextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Email address",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your email address here!";
              }

              return null;
            },
          ),
        ));
  }

  _phonenumbertextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Phone number",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your phone number here!";
              }

              return null;
            },
          ),
        ));
  }

  _orderidtextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Enter order ID",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your order id here!";
              }

              return null;
            },
          ),
        ));
  }

  _orderdatetextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Enter order date",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter your order date here!";
              }

              return null;
            },
          ),
        ));
  }

  _productnametextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Product Name",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter product name here!";
              }

              return null;
            },
          ),
        ));
  }

  _productcodetextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Product Code",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter product code here!";
              }

              return null;
            },
          ),
        ));
  }

  _productquantitytextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Quantity",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter product quantity here!";
              }

              return null;
            },
          ),
        ));
  }

  _deadonarrival() {
    return Column(
      children: [
        Container(
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
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("   Dead on arrival",
                    style: TextStyle(
                      color: AppColors.lighttextColor,
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isExpand = isExpand ? false : true;
                    });
                  },
                  icon: isExpand
                      ? Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: AppColors.darktextColor,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: AppColors.darktextColor,
                        ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
          child: Container(
              child: isExpand
                  ? Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Product is opened",
                              style: TextStyle(
                                color: AppColors.darktextColor,
                              )),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedoption = 0;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      child: selectedoption == 0
                                          ? Icon(
                                              Icons
                                                  .radio_button_checked_outlined,
                                              color: HexColor("#CC9D76"),
                                            )
                                          : Icon(
                                              Icons
                                                  .radio_button_unchecked_outlined,
                                              color: Colors.grey),
                                    ),
                                    SizedBox(width: 5),
                                    Text("Yes",
                                        style: TextStyle(
                                          color: AppColors.darktextColor,
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedoption = 1;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      child: selectedoption == 1
                                          ? Icon(
                                              Icons
                                                  .radio_button_checked_outlined,
                                              color: HexColor("#CC9D76"),
                                            )
                                          : Icon(
                                              Icons
                                                  .radio_button_unchecked_outlined,
                                              color: Colors.grey),
                                    ),
                                    SizedBox(width: 5),
                                    Text("No",
                                        style: TextStyle(
                                          color: AppColors.darktextColor,
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]))
                  : Container()),
        )
      ],
    );
  }

  _productfaultytextfield() {
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
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: "Faulty or other details",
                hintStyle: TextStyle(
                  color: AppColors.lighttextColor,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.yellow, width: 1),
                    borderRadius: BorderRadius.circular(10))),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Please, enter here! why are you return this product.";
              }

              return null;
            },
          ),
        ));
  }
}
