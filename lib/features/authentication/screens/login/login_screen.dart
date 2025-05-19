import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/login_sigup/divider.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/social_buttons.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/login/widgets/login_title.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Login Title and subtitle
              LoginTitleWidget(),

              SizedBox(height: USizes.spaceBtwSections),

              //Login Form
              LoginForm(),

              SizedBox(height: USizes.spaceBtwSections),

              //Divider
              LoginSignUpDivider(title: UTexts.orSignInWith),

              SizedBox(height: USizes.spaceBtwSections),
              //Sign In Buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
