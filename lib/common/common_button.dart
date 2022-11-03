import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/utils/colors.dart';

class CommonButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  const CommonButton({
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  _CommonButtonState createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: HexColor("#CC9D76"),
          borderRadius: BorderRadius.circular(30),
        ),
        height: widget.height,
        width: widget.width,
        child: Center(
          child: Text(widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 0.5,
              )),
        ));
  }
}
