import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevatedButton.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/outlinedButton.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            label: Text(UTexts.email),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextField(
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

            TextButton(onPressed: () {}, child: Text(UTexts.forgetPassword)),
          ],
        ),

        SizedBox(height: USizes.spaceBtwSections),
        //signin button
        UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwItems),
        //create account button
        UOutlinedButton(onPressed: () {}, child: Text(UTexts.createAccount)),
      ],
    );
  }
}
