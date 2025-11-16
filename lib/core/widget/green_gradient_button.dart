import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_gradients.dart';

Widget greenGradientButton({required TextTheme textTheme, required String text, double height = 25, double width = 80, double radius = 7.22, fontWeight = FontWeight.normal}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: AppGradients.greenGradient
    ),
    child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(child: Text(text, style: textTheme.bodyLarge?.copyWith(color: AppColors.background, fontWeight: fontWeight),)),
  ),
  );
}
