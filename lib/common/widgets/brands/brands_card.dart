import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/rounded_container_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:flutter_e_commerce_app/utils/constants/enums.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      width: USizes.brandCardWidth,
      showBorder: true,
      padding: EdgeInsets.all(USizes.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          Flexible(
            child: RoundedImage(
              imageUrl: UImages.bataLogo,
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(width: USizes.spaceBtwItems / 2),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                BrandTitleWithVerifyIcon(
                  title: 'Bata',
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '172 products',
                  style: Theme.of(context).textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
