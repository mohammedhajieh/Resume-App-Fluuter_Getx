import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_colors.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.appPrimary,
      ),
      child: Text(
        text,
        style: theme.textTheme.displayMedium,
        textScaler: TextScaler.noScaling,
      ),
    );
  }
}
