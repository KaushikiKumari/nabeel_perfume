import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabeel_perfume/common/common_button.dart';
import 'package:nabeel_perfume/pages/verfications/register_page.dart';
import 'package:nabeel_perfume/pages/verfications/signin_page.dart';
import 'package:nabeel_perfume/utils/colors.dart';

import 'onboarding_content.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png")),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: Container(
                          height: currentIndex == 0 ? 180 : 320,
                          width: MediaQuery.of(context).size.width / 1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(contents[i].image),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      SizedBox(height: 0),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darktextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.darktextColor,
                          ),
                        ),
                      ),
                      Container(
                          child: currentIndex == 3
                              ? Column(
                                  children: [
                                    BouncingWidget(
                                      duration: Duration(microseconds: 700),
                                      scaleFactor: 1.5,
                                      onPressed: () {
                                        Get.off(SignInPage(),
                                            transition:
                                                Transition.rightToLeftWithFade,
                                            duration:
                                                Duration(milliseconds: 600));
                                      },
                                      child: Container(
                                          height: 50,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              color: AppColors.backgroundColor,
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                              child: Text("SIGN IN",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .lighttextColor,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)))),
                                    ),
                                    SizedBox(height: 10),
                                    BouncingWidget(
                                        duration: Duration(microseconds: 700),
                                        scaleFactor: 1.5,
                                        onPressed: () {
                                          Get.off(RegisterPage(),
                                              transition: Transition
                                                  .rightToLeftWithFade,
                                              duration:
                                                  Duration(milliseconds: 600));
                                        },
                                        child: CommonButton(
                                            text: "CREATE ACCOUNT",
                                            width: 300,
                                            height: 50))
                                  ],
                                )
                              : Container())
                    ],
                  );
                },
              ),
            ),
            // Container(
            //   child: currentIndex == 0
            //       ? Container(
            //           height: Get.height / 4,
            //           width: Get.width,
            //           decoration: BoxDecoration(
            //             // color: AppColors.backgroundColor,
            //             color: Colors.red,
            //             image: DecorationImage(
            //                 image: AssetImage(
            //                     "assets/images/background_down.png")),
            //           ),
            //         )
            //       : Center(
            //           child: currentIndex == 1 || currentIndex == 2
            //               ? Container(height: 100)
            //               : Container()),
            // ),
          ],
        ),
      ),
    );
  }
}
