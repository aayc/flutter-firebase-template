import 'package:app/subcomponents/rounded_rectangle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textstyles.dart';

class BeautInputTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;
  final String hintText;
  final TextStyle textStyle;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final Function onTapPrefixIcon;
  final int maxLines;
  final int minLines;

  BeautInputTextField(
      {this.controller,
      this.hintText = '',
      this.onChanged,
      this.minLines = 1,
      this.maxLines = 2,
      this.textStyle,
      this.onTapPrefixIcon,
      this.prefixIcon = const SizedBox(width: 0),
      this.suffixIcon = const SizedBox(width: 0)});

  @override
  Widget build(BuildContext context) {
    return RoundedRectangle(
        color: Colors.transparent,
        padding: EdgeInsets.all(0),
        child: Row(
          children: [
            const SizedBox(width: 10),
            prefixIcon,
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                onChanged: onChanged ?? (text) {},
                autofocus: false,
                style: textStyle ?? H3,
                maxLines: maxLines,
                minLines: minLines,
                controller: controller,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.only(top: 10, left: 0),
                  hintText: hintText,
                  hintStyle: textStyle ?? H3.copyWith(color: Colors.black45),
                ),
              ),
            ),
            suffixIcon,
            const SizedBox(width: 10),
          ],
        ));
  }
}
