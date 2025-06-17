import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/icons/icons_container.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
    required this.quantity,
    this.add,
    this.remove,
  });

  final int quantity;
  final VoidCallback? add, remove;
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Decrement Button
        UCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: USizes.iconSm,
          color: dark ? UColors.white : UColors.black,
          backgroundColor: dark ? UColors.darkerGrey : UColors.light,
          onPressed: remove,
        ),
        SizedBox(width: USizes.spaceBtwItems),

        /// Counter Text
        Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(width: USizes.spaceBtwItems),

        /// Increment Button
        UCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: USizes.iconSm,
          color: UColors.white,
          backgroundColor: UColors.primary,
          onPressed: add,
        ),
      ],
    );
  }
}
