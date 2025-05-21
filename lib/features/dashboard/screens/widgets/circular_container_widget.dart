import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    super.key,
    this.height = 400.0,
    this.width = 400.0,
    this.radius = 500.0,
    this.padding,
    this.margin,
    this.backgroundColor = UColors.white,
  });

  final double height, width, radius;
  final EdgeInsetsGeometry? padding, margin;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
