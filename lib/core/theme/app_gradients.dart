import 'package:flutter/material.dart';
import 'package:seven_seers/core/theme/app_colors.dart';

class AppGradients{
  static Gradient whiteBlackGradientWithPercentage = LinearGradient(
    colors: [
      AppColors.textPrimary,
      AppColors.textSecondary,
    ],
    stops: [
      0.0,
      0.9
    ],
  );

  static Gradient blackWhiteGradientWithPercentage = LinearGradient(
    colors: [
      AppColors.background,
      AppColors.greyLight,
    ],
    stops: [
      0.0,
      0.8
    ],
  );

  static Gradient blackBrownGradient = LinearGradient(
    colors: [
      AppColors.textPrimary,
      AppColors.brownText,
    ],
    stops: [
      0.0,
      0.9
    ],
  );

  static Gradient greenGradient = LinearGradient(
      colors: [
        AppColors.primary,
        AppColors.secondary,
      ]
  );

  static Gradient greenGradientWithPercentage = LinearGradient(
      colors: [
        AppColors.primary,
        AppColors.secondary,
      ],
    stops: [
      0.5,
      1
    ],
  );

  static Gradient lightGreenGradient = LinearGradient(
      colors: [
        AppColors.lightGreen,
        AppColors.primary,
      ]
  );

  static Gradient blackGreenGradient = LinearGradient(
      colors: [
        AppColors.textPrimary,
        AppColors.tertiary,
      ],
  );

  static const LinearGradient whitePinkGradient = LinearGradient(
    colors: [
      AppColors.background,
      AppColors.boxColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );


  static Gradient whiteBlueGradient = LinearGradient(
    colors: [
      AppColors.card,
      AppColors.blueText,
    ],
  );
}