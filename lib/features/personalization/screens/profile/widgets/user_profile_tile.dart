import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        UTexts.homeAppBarSubTitle,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        'Kayym@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.edit)),
      contentPadding: EdgeInsets.zero,
    );
  }
}
