import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_e_commerce_app/features/dashboard/controllers/home/home_controller.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/banner_dot_nav.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class PromoSliders extends StatelessWidget {
  const PromoSliders({super.key, required this.banners});

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        ///Banners
        CarouselSlider(
          items:
              banners.map((banner) => RoundedImage(imageUrl: banner)).toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
          ),
          carouselController: controller.carouselController,
        ),

        SizedBox(height: USizes.spaceBtwItems),

        ///Navigation
        BannerDotNavigation(),
      ],
    );
  }
}
