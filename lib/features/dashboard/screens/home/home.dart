import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/textfield/search_bar.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/home_app_bar.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/home_categories.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/home/widgets/primary_header_widget.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: USizes.homePrimaryHeaderHeight + 20),
          PrimaryContainerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                SizedBox(height: USizes.spaceBtwSections),
                HomeCategories(),
              ],
            ),
          ),
          USearchBar(),
        ],
      ),
    );
  }
}
