import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingSkipButton extends StatelessWidget {
  OnBoardingSkipButton({super.key});
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>
          controller.currentIndex.value == 2
              ? SizedBox()
              : Positioned(
                right: 0,
                child: TextButton(
                  onPressed: controller.skipPage,
                  child: Text('Skip'),
                ),
              ),
    );
  }
}
