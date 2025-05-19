import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class OnBoardingNextButton extends StatelessWidget {
  OnBoardingNextButton({super.key});
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(
          () => (Text(
            controller.currentIndex.value == 2 ? 'Get Started' : 'Next',
          )),
        ),
      ),
    );
  }
}
