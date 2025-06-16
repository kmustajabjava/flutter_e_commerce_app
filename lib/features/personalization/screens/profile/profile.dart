import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/section_header_widget.dart';
import 'package:flutter_e_commerce_app/features/personalization/screens/addresses/address.dart';
import 'package:flutter_e_commerce_app/features/personalization/screens/profile/widgets/profile_header_widget.dart';
import 'package:flutter_e_commerce_app/features/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:flutter_e_commerce_app/features/personalization/screens/profile/widgets/user_profile_tile.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderWidget(),
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  UserProfileTile(),
                  SizedBox(height: USizes.spaceBtwItems),
                  SectionHeaderWidget(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),

                  SettingsMenuTile(
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery addresses',
                    icon: Iconsax.safe_home,
                    onTap: () => Get.to(() => AddressScreen()),
                  ),
                  SettingsMenuTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout ',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed orders',
                    icon: Iconsax.bag_tick,
                    onTap: () {},
                  ),
                  SizedBox(height: USizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Logout'),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
