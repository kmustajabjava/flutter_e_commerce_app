import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/outlined_button.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_e_commerce_app/utils/constants/images.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:flutter_e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                UImages.mailSentImage,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                UTexts.resetPasswordTitle,
                style: TextTheme.of(context).headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                'kay@gmail.com',
                style: TextTheme.of(context).bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                UTexts.resetPasswordSubTitle,
                style: TextTheme.of(context).bodySmall,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElevatedButton(onPressed: () {}, child: Text(UTexts.done)),
              SizedBox(height: USizes.spaceBtwItems / 2),
              UOutlinedButton(
                onPressed: () {},
                child: Text(UTexts.resendEmail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
