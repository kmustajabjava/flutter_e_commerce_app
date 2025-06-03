import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/primary_header_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:flutter_e_commerce_app/common/widgets/textfield/search_bar.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class StorePrimaryHeader extends StatelessWidget {
  const StorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PrimaryHeaderContainer(
          height: USizes.storePrimaryHeaderHeight,
          child: UAppBar(
            title: Text(
              'Store',
              style: TextTheme.of(
                context,
              ).headlineMedium!.apply(color: UColors.white),
            ),
            actions: [CartCounterWidget()],
          ),
        ),
        USearchBar(),
      ],
    );
  }
}
