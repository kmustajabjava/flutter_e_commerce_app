import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/circular_container_widget.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgroundColor,
    required this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircularWidget(
            backgroundColor:
                backgroundColor ?? (dark ? UColors.black : UColors.white),
            height: 56,
            width: 56,
            padding: EdgeInsets.all(USizes.sm),
            child: Image(image: AssetImage(image), fit: BoxFit.cover),
          ),
          SizedBox(height: USizes.spaceBtwItems / 2),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: TextTheme.of(
                context,
              ).labelMedium!.apply(color: UColors.white),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
