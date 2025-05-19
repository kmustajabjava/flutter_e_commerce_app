import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: UColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              UImages.googleIcon,
              height: USizes.iconMd,
              width: USizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: USizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: UColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              UImages.facebookIcon,
              height: USizes.iconMd,
              width: USizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
