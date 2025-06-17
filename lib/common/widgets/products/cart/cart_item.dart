import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Product Image
        RoundedImage(
          imageUrl: UImages.productImage4a,
          height: 60.0,
          width: 60.0,
          padding: EdgeInsets.all(USizes.sm),
          backgroundColor: isDark ? UColors.darkerGrey : UColors.light,
        ),
        SizedBox(height: USizes.spaceBtwItems),
        //Brand, Name, Variation
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Brand
              BrandTitleWithVerifyIcon(title: 'iPhone'),
              // title
              ProductTitleText(title: 'iPhone 11 with 64 GB', maxLines: 1),
              // Variations or Attributes
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Storage',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '512 GB',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
