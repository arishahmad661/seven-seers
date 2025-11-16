import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_gradients.dart';
import '../../../core/widget/gradient_text.dart';

Widget clubButton(Size size, TextTheme textTheme) {
  return ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(10),
    child: Card(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/explore/club.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadiusGeometry.circular(10)
        ),
        width: size.width - 54,
        height: 111,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientText(gradient: AppGradients.greenGradientWithPercentage, text: "Club Events", textStyle: textTheme.labelLarge!),
                  Image.asset("assets/icons/arrow_up_right.png", width: 16, height: 16,),
                ],
              ),
              Text("Browse all Club events", style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w100, color: AppColors.greySubtitle2),)
            ],
          ),
        ),
      ),
    ),
  );
}
