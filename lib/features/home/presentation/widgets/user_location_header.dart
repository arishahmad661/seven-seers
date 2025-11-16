import 'package:flutter/material.dart';
import 'package:seven_seers/core/theme/app_colors.dart';
import 'package:seven_seers/core/widget/header.dart';
import '../../../../core/theme/app_gradients.dart';
import '../../../../core/widget/gradient_text.dart';

Widget userLocationHeader({required TextTheme textTheme}) {
  return Container(
    decoration: BoxDecoration(
      gradient: AppGradients.whitePinkGradient,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)
      )
    ),
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(textTheme: textTheme),

          SizedBox(height: 40,),

          GradientText(text: "CENTRAL SQUARE", textStyle: textTheme.titleMedium!, gradient: AppGradients.blackBrownGradient,),
          GradientText(text: "YOUR NEW", textStyle: textTheme.labelLarge!, gradient: AppGradients.blackBrownGradient,),
          GradientText(text: "ADDRESS FOR", textStyle: textTheme.labelLarge!, gradient: AppGradients.blackBrownGradient,),
          GradientText(text: "GROWTH", textStyle: textTheme.labelLarge!, gradient: AppGradients.blackBrownGradient,),
        ],
      ),
    ),
  );
}
