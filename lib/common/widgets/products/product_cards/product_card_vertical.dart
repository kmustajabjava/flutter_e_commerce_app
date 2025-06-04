import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/rounded_container_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/icons/icons_container.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shadow.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(USizes.productImageRadius),
          color: dark ? UColors.darkerGrey : UColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            URoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(USizes.sm),
              backgroundColor: dark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  //product Image
                  Center(child: RoundedImage(imageUrl: UImages.productImage15)),
                  //product tag
                  Positioned(
                    top: 12.0,
                    child: URoundedContainer(
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: USizes.sm,
                        vertical: USizes.xs,
                      ),
                      child: Text(
                        '20%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: UColors.black),
                      ),
                    ),
                  ),

                  Positioned(
                    right: 0,
                    top: 0,
                    child: UCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Product Title
                  ProductTitleText(title: "Blue Bata Shoes", smallSize: true),
                  SizedBox(height: USizes.spaceBtwItems / 2),

                  //Product Brand
                  BrandTitleWithVerifyIcon(title: 'Bata'),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: USizes.sm),
                  child: ProductPriceText(price: '76'),
                ),
                Container(
                  width: USizes.iconLg * 1.2,
                  height: USizes.iconLg * 1.2,
                  decoration: BoxDecoration(
                    color: UColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(USizes.borderRadiusMd),
                      bottomRight: Radius.circular(USizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Iconsax.add, color: UColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
