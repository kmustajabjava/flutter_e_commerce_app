import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/circular_container_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: height,
        color: UColors.primary,
        child: Stack(
          children: [
            /// Circular Container
            Positioned(
              top: -150,
              right: -160,
              child: CircularWidget(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            /// Circular Container
            Positioned(
              top: 50,
              right: -250,
              child: CircularWidget(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            /// Child
            child,
          ],
        ),
      ),
    );
  }
}
