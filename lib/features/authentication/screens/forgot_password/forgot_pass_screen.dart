import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/forgot_password/reset_password_screen.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Header
              Text(
                UTexts.forgetPasswordTitle,
                style: TextTheme.of(context).headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),
              Text(
                UTexts.forgetPasswordSubTitle,
                style: TextTheme.of(context).labelMedium,
              ),

              SizedBox(height: USizes.spaceBtwSections),

              ///Form
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      label: Text(UTexts.email),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwInputFields),
                  SizedBox(height: USizes.spaceBtwItems),
                  UElevatedButton(
                    onPressed: () {
                      Get.to(() => ResetPasswordScreen());
                    },
                    child: Text(UTexts.submit),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
