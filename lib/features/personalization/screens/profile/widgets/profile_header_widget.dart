import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/custom_shapes/primary_header_widget.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/user_profile_logo.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: USizes.profilePrimaryHeaderHeight + 60),
        PrimaryHeaderContainer(
          height: USizes.profilePrimaryHeaderHeight,
          child: Container(),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(child: UserProfileLogo()),
        ),
      ],
    );
  }
}
