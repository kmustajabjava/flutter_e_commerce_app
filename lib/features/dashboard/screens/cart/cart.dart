import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_e_commerce_app/common/widgets/products/cart/product_quantity_add_or_remove.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: UPadding.screenPadding,
        child: ListView.separated(
          itemCount: 2,
          separatorBuilder:
              (context, int index) => SizedBox(height: USizes.spaceBtwSections),
          itemBuilder: (context, index) {
            return Column(
              children: [
                //Cart Item
                CartItem(),
                SizedBox(height: USizes.spaceBtwItems),
                //Price and Counter
                Row(
                  children: [
                    ProductQuantityWithAddRemove(quantity: 2),
                    Spacer(),
                    ProductPriceText(price: '323'),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(
          onPressed: () {},
          child: Text('Checkout \$2569'),
        ),
      ),
    );
  }
}
