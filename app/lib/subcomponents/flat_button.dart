import 'package:app/subcomponents/rounded_rectangle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textstyles.dart';

class ColoredFlatButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final double hPadding;
  final double fontSize;
  ColoredFlatButton(
      {@required this.text,
      @required this.onPressed,
      @required this.color,
      this.fontSize = 14,
      this.hPadding = 30,
      this.textColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: RoundedRectangle(
          borderRadius: 10,
          width: MediaQuery.of(context).size.width / 2.3,
          height: 35,
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Center(
            child: Text(text,
                style:
                    H3.copyWith(color: textColor, fontSize: fontSize, fontWeight: FontWeight.w600)),
          ),
          color: color),
    );
  }
}

class OutlinedFlatButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final double hPadding;
  final double fontSize;
  final double borderRadius;
  OutlinedFlatButton(
      {@required this.text,
      @required this.onPressed,
      @required this.color,
      this.fontSize = 18,
      this.hPadding = 40,
      this.borderRadius = 12.0,
      this.textColor = Colors.grey});
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        padding: EdgeInsets.symmetric(horizontal: hPadding),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(this.borderRadius)),
        onPressed: onPressed,
        child: Text(text, style: H3.copyWith(color: textColor, fontSize: fontSize)),
        color: color);
  }
}
