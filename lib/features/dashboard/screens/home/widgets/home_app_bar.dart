import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_e_commerce_app/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UTexts.homeAppBarTitle,
            style: TextTheme.of(
              context,
            ).labelMedium!.copyWith(color: UColors.grey),
          ),

          Text(
            UTexts.homeAppBarSubTitle,
            style: TextTheme.of(
              context,
            ).headlineSmall!.copyWith(color: UColors.white),
          ),
        ],
      ),
      actions: [CartCounterWidget()],
    );
  }
}
