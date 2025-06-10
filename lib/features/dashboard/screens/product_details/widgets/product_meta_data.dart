import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/rounded_container_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Actual price, sale price, and share button
          Row(
            children: [
              URoundedContainer(
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
              SizedBox(width: USizes.spaceBtwItems),
              //Sale Price
              Text(
                '\$250',
                style: Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: USizes.spaceBtwItems),
              //Actual Price
              ProductPriceText(price: '150', isLarge: true),
              Spacer(),
              //Share Button
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),
          SizedBox(height: USizes.spaceBtwItems / 1.5),
          //Product title
          ProductTitleText(title: 'Apple iPhone 11'),
          SizedBox(height: USizes.spaceBtwItems / 1.5),
          //Product Availability
          Row(
            children: [
              ProductTitleText(title: 'Status'),
              SizedBox(width: USizes.spaceBtwItems),
              Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: USizes.spaceBtwItems / 1.5),
            ],
          ),
          Row(
            children: [
              UCircularImage(
                image: UImages.appleLogo,
                padding: 0,
                width: 32.0,
                height: 32.0,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              BrandTitleWithVerifyIcon(title: 'Apple'),
            ],
          ),
        ],
      ),
    );
  }
}
