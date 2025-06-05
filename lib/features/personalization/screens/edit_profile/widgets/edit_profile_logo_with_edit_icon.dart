import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/icons/icons_container.dart';
import 'package:flutter_e_commerce_app/common/widgets/images/user_profile_logo.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileLogoWithEditIcon extends StatelessWidget {
  const UserProfileLogoWithEditIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: UserProfileLogo()),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,

          child: Center(child: UCircularIcon(icon: Iconsax.edit)),
        ),
      ],
    );
  }
}
