import 'package:flutter/material.dart';
import '../../../../core/theme/app_gradients.dart';
import '../../../../core/widget/gradient_text.dart';

Widget contentSeparator({required TextTheme textTheme, required String title}) {
  return Column(
    children: [
      SizedBox(height: 24.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/line3.png", width: 30, height: 1,),
          GradientText(gradient: AppGradients.blackGreenGradient, text: " $title ", textStyle: textTheme.headlineLarge!),
          Image.asset("assets/icons/line2.png", width: 30, height: 1,),
        ],
      ),
      SizedBox(height: 8.0,),
    ],
  );
}
