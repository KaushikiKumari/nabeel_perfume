import 'package:flutter/material.dart';
import 'package:nabeel_perfume/utils/colors.dart';

class CommonTextField extends StatefulWidget {
  final String text;

  const CommonTextField({
    required this.text,
  });

  @override
  _CommonTextFieldState createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        alignment: Alignment.bottomLeft,
        child: TextField(
            autocorrect: true,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 1, bottom: 8),
              labelText: widget.text,
              labelStyle: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
              ),
            )));
  }
}
