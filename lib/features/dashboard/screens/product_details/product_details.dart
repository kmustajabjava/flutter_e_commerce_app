import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/product_details/widgets/product_thumbnail_slider.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image with Slider
            UProductThumbnailAndSlider(),

            /// PRODUCT DETAILS
            /// Price, stock, discount and brand
            UProductMetaData(),
          ],
        ),
      ),
    );
  }
}
