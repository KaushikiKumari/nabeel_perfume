import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
            child: Text('ABOUT US', style: StringsStyle.registertitlestyle),
          ),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                child: Container(
                  color: AppColors.appbackgroundColor,
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
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                                "asa sdjias akjdsoai aksjda alksjoida aksoa akska aisjdoia kasda oiasoda noiasjo adaoisoadns aoisda isjda oiasoidoauwod aksd kas askdoe lisjoda oiasjdoa nasjdao aojsdoiaoeian iasdoea ajsda kajsd aisjdosafaoiaso asidjoas as asd sdije asdaij asa askfa asasaa",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.darktextColor,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                "asa sdjias akjdsoai aksjda alksjoida aksoa akska aisjdoia kasda oiasoda noiasjo adaoisoadns aoisda isjda oiasoidoauwod aksd kas askdoe lisjoda oiasjdoa nasjdao aojsdoiaoeian iasdoea ajsda kajsd aisjdosafaoiaso asidjoas as asd sdije asdaij asa askfa asasaa",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.darktextColor,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                "asa sdjias akjdsoai aksjda alksjoida aksoa akska aisjdoia kasda oiasoda noiasjo adaoisoadns aoisda isjda oiasoidoauwod aksd kas askdoe lisjoda oiasjdoa nasjdao aojsdoiaoeian iasdoea ajsda kajsd aisjdosafaoiaso asidjoas as asd sdije asdaij asa askfa asasaa",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.darktextColor,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                "asa sdjias akjdsoai aksjda alksjoida aksoa akska aisjdoia kasda oiasoda noiasjo adaoisoadns aoisda isjda oiasoidoauwod aksd kas askdoe lisjoda oiasjdoa nasjdao aojsdoiaoeian iasdoea ajsda kajsd aisjdosafaoiaso asidjoas as asd sdije asdaij asa askfa asasaa",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.darktextColor,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                "asa sdjias akjdsoai aksjda alksjoida aksoa akska aisjdoia kasda oiasoda noiasjo adaoisoadns aoisda isjda oiasoidoauwod aksd kas askdoe lisjoda oiasjdoa nasjdao aojsdoiaoeian iasdoea ajsda kajsd aisjdosafaoiaso asidjoas as asd sdije asdaij asa askfa asasaa",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.darktextColor,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                "asa sdjias akjdsoai aksjda alksjoida aksoa akska aisjdoia kasda oiasoda noiasjo adaoisoadns aoisda isjda oiasoidoauwod aksd kas askdoe lisjoda oiasjdoa nasjdao aojsdoiaoeian iasdoea ajsda kajsd aisjdosafaoiaso asidjoas as asd sdije asdaij asa askfa asasaa",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: AppColors.darktextColor,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
