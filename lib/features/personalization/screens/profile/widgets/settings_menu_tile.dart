import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/utils/constants/colors.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title, subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: UColors.primary),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
