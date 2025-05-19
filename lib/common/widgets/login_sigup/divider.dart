import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class LoginSignUpDivider extends StatelessWidget {
  const LoginSignUpDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final isDark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          child: Divider(
            indent: 40,
            endIndent: 5,
            thickness: 0.5,
            color: isDark ? UColors.darkGrey : UColors.grey,
          ),
        ),
        Text(title, style: TextTheme.of(context).labelMedium),
        Expanded(
          child: Divider(
            indent: 5,
            endIndent: 40,
            thickness: 0.5,
            color: isDark ? UColors.darkGrey : UColors.grey,
          ),
        ),
      ],
    );
  }
}
