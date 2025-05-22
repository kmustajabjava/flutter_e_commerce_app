import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/clipper/custom_rounded_clipper.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/widgets/circular_container_widget.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class PrimaryContainerHeader extends StatelessWidget {
  const PrimaryContainerHeader({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomRoundEdges(),
      child: Container(
        height: USizes.homePrimaryHeaderHeight,
        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              right: -150,
              top: -160,
              child: CircularWidget(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              right: -250,
              top: 50,
              child: CircularWidget(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
