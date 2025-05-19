import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextTheme.of(context).labelLarge,
              children: [
                TextSpan(text: "${UTexts.iAgreeTo} "),
                TextSpan(
                  text: UTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: isDark ? UColors.white : UColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: isDark ? UColors.white : UColors.primary,
                  ),
                ),
                TextSpan(text: " ${UTexts.and} "),
                TextSpan(
                  text: UTexts.termsOfUse,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: isDark ? UColors.white : UColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: isDark ? UColors.white : UColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
