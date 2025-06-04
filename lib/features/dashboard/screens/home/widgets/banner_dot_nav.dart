import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/features/dashboard/controllers/home/home_controller.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
  const BannerDotNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(
      () => SmoothPageIndicator(
        controller: PageController(initialPage: controller.currentIndex.value),
        count: 6,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0,
          activeDotColor: UColors.primary,
        ),
      ),
    );
  }
}
