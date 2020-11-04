import 'package:flutter/material.dart';

class RoundedRectangle extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsets padding;
  final double width;
  final double height;
  final double borderRadius;
  RoundedRectangle(
      {@required this.child,
      @required this.color,
      @required this.padding,
      this.borderRadius = 15,
      this.height,
      this.width});
  @override
  Widget build(BuildContext context) {
    var constraints = (width != null || height != null) ? null : BoxConstraints.expand();
    return Container(
        width: width ?? double.infinity,
        height: height ?? double.infinity,
        child: Padding(padding: padding, child: child),
        constraints: constraints,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: color,
        ));
  }
}
