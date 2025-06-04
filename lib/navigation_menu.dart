import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/home.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/store/store.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/wishlist/wishlist.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'utils/constants/colors.dart';
import 'utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = UHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      /// -----[Navigation Menu]-----
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? UColors.dark : UColors.light,
          indicatorColor:
              dark
                  ? UColors.light.withValues(alpha: 0.1)
                  : UColors.dark.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    Container(),
  ];
}
