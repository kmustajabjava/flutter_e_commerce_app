import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_e_commerce_app/common/widgets/textfield/search_bar.dart';
import 'package:flutter_e_commerce_app/features/dashboard/controllers/home/home_controller.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/home_app_bar.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/home_categories.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/primary_header_widget.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/promo_sliders.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/text/section_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Upper Part of Home Screen
            Stack(
              children: [
                SizedBox(height: USizes.homePrimaryHeaderHeight + 20),
                PrimaryHeaderContainer(
                  height: USizes.homePrimaryHeaderHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeAppBar(),
                      SizedBox(height: USizes.spaceBtwSections),
                      HomeCategories(),
                    ],
                  ),
                ),
                USearchBar(),
              ],
            ),

            /// Lower Part of Home Screen
            Padding(
              padding: EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  PromoSliders(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                      UImages.homeBanner6,
                    ],
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),
                  SectionHeaderWidget(title: UTexts.popularProducts),
                  const SizedBox(height: USizes.spaceBtwItems),

                  ///Grid View of Products cards
                  GridLayout(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return ProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
