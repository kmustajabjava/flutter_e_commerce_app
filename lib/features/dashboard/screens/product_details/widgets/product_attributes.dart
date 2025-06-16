import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/chip/choice_chips.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/rounded_container_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/section_header_widget.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attributes, Pricing and Description
        URoundedContainer(
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: isDark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title, Price and Stock
              Row(
                children: [
                  SectionHeaderWidget(
                    title: "Variations",
                    showActionButton: false,
                  ),
                  SizedBox(width: USizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(title: 'Price: ', smallSize: true),
                          Text(
                            '\$250',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: USizes.spaceBtwItems),
                          ProductPriceText(price: '150'),
                        ],
                      ),
                      Row(
                        children: [
                          ProductTitleText(title: 'Stock: ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //Attribute Description
              ProductTitleText(
                title: 'This is a product of iPhone 11 with 512 GB',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        SizedBox(height: USizes.spaceBtwItems),

        //Attributes - COLORS
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeaderWidget(title: 'Colors', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        //Attributes - SIZES
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeaderWidget(title: 'Sizes', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'Small',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Medium',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Large',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
