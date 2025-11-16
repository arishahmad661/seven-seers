import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget poster() {
  return Card(
    color: AppColors.background,
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
    child: ClipRRect(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image.asset("assets/home/poster.jpg"),
        ),
      ),
    ),
  );
}
