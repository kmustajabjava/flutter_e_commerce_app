import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/padding.dart';
import 'package:flutter_e_commerce_app/common/widgets/buttons/social_buttons.dart';
import 'package:flutter_e_commerce_app/common/widgets/login_sigup/divider.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/signup/widgets/sigup_form.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header
              Text(
                UTexts.signupTitle,
                style: TextTheme.of(context).headlineMedium,
              ),

              SizedBox(height: USizes.spaceBtwSections),

              ///SignUp Form
              SignUpForm(),

              SizedBox(height: USizes.spaceBtwSections),
              //Divider
              LoginSignUpDivider(title: UTexts.orSignupWith),

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
