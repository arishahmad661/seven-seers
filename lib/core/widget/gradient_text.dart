import 'package:flutter/material.dart';
import 'package:seven_seers/core/theme/app_colors.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Gradient gradient;
  const GradientText({super.key, required this.gradient, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(text, style: textStyle.copyWith(color: AppColors.background),),
    );

  }
}
