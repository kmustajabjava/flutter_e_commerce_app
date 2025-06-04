import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/brands/brands_showcase.dart';
import 'package:flutter_e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/section_header_widget.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
          child: Column(
            children: [
              BrandShowcase(
                images: [
                  UImages.productImage47,
                  UImages.productImage43,
                  UImages.productImage7,
                ],
              ),
              BrandShowcase(
                images: [
                  UImages.productImage47,
                  UImages.productImage43,
                  UImages.productImage7,
                ],
              ),
              SizedBox(height: USizes.spaceBtwItems),
              SectionHeaderWidget(title: "You might like", onPressed: () {}),
              GridLayout(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCardVertical();
                },
              ),
              SizedBox(height: USizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
