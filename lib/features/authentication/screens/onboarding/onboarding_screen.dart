import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_nav_widget.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page_widget.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Stack(
            children: [
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: [
                  OnBoardingPage(
                    animation: UImages.onboarding1Animation,
                    title: UTexts.onBoardingTitle1,
                    subTitle: UTexts.onBoardingSubTitle1,
                  ),
                  OnBoardingPage(
                    animation: UImages.onboarding2Animation,
                    title: UTexts.onBoardingTitle2,
                    subTitle: UTexts.onBoardingSubTitle2,
                  ),
                  OnBoardingPage(
                    animation: UImages.onboarding3Animation,
                    title: UTexts.onBoardingTitle3,
                    subTitle: UTexts.onBoardingSubTitle3,
                  ),
                ],
              ),

              OnBoardingDotNavigation(),

              OnBoardingNextButton(),

              OnBoardingSkipButton(),
            ],
          ),
        ),
      ),
    );
  }
}
