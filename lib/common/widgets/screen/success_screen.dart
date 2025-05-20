import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:flutter_e_commerce_app/utils/helpers/device_helpers.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });
  final String title, subtitle, image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                title,
                style: TextTheme.of(context).headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                subtitle,
                style: TextTheme.of(context).bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElevatedButton(onPressed: onTap, child: Text(UTexts.uContinue)),
            ],
          ),
        ),
      ),
    );
  }
}
