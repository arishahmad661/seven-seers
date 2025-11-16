import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget filterOption({required TextTheme textTheme, required text}) {
  return IntrinsicWidth(
    child: Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
                color: AppColors.greyLight
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Center(child: Text(text, style: textTheme.bodyLarge,)),
        ),
      ),
    ),
  );
}