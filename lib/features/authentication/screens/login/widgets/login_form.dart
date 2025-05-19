import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/outlined_button.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/forgot_password/forgot_pass_screen.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            label: Text(UTexts.email),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            label: Text(UTexts.password),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),
        //remember me & fogot password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(UTexts.rememberMe),
              ],
            ),

            TextButton(
              onPressed: () {
                Get.to(() => ForgotPassScreen());
              },
              child: Text(UTexts.forgetPassword),
            ),
          ],
        ),

        SizedBox(height: USizes.spaceBtwSections),
        //signin button
        UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwItems),
        //create account button
        UOutlinedButton(
          onPressed: () {
            Get.to(() => SignupScreen());
          },
          child: Text(UTexts.createAccount),
        ),
      ],
    );
  }
}
