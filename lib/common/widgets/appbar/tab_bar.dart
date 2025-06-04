import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';
import 'package:flutter_e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? UColors.black : UColors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: dark ? UColors.white : UColors.primary,
        unselectedLabelColor: UColors.darkGrey,
        indicatorColor: UColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}
