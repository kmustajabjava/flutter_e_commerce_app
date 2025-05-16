import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  OnBoardingDotNavigation({super.key});
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 3.5,
      right: UDeviceHelper.getScreenWidth(context) / 3.5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
