import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/brands/brands_card.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/rounded_container_widget.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    final bool isDark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      borderColor: UColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(USizes.md),
      margin: EdgeInsets.only(bottom: USizes.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BrandCard(showBorder: false),
          Row(
            children:
                images.map((image) => buildBrandImage(isDark, image)).toList(),
          ),
        ],
      ),
    );
  }

  Widget buildBrandImage(bool isDark, String image) {
    return Expanded(
      child: URoundedContainer(
        height: 100,
        margin: EdgeInsets.only(right: USizes.sm),
        padding: EdgeInsets.all(USizes.md),
        backgroundColor: isDark ? UColors.darkGrey : UColors.light,
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}
