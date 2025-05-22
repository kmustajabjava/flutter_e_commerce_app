import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/image_text/vertical_image_text.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UTexts.popularCategories,
            style: TextTheme.of(
              context,
            ).headlineSmall!.apply(color: UColors.white),
          ),
          SizedBox(height: USizes.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder:
                  (context, index) => SizedBox(width: USizes.spaceBtwItems),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return VerticalImageText(
                  title: UTexts.popularCategories,
                  image: UImages.sportsIcon,
                  textColor: UColors.white,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
