import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/section_header_widget.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/product_details/widgets/product_thumbnail_slider.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image with Slider
            UProductThumbnailAndSlider(),

            /// PRODUCT DETAILS
            /// Price, stock, discount and brand
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  UProductMetaData(),
                  SizedBox(height: USizes.spaceBtwItems),
                  //Product Attributes
                  ProductAttributes(),
                  SizedBox(height: USizes.spaceBtwSections),
                  UElevatedButton(onPressed: () {}, child: Text('Checkout')),
                  SizedBox(height: USizes.spaceBtwItems),
                  SectionHeaderWidget(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                  ReadMoreText(
                    'This is a product of iPhone 11 with 512 GB. This is a product of iPhone 11 with 512 GB. This is a product of iPhone 11 with 512 GB',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAddToCart(),
    );
  }
}
