import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_gradients.dart';
import '../../../core/widget/gradient_text.dart';

Widget eventAndSportsOption(Size size, TextTheme textTheme) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10),
        child: Card(
          child: Container(
            width: size.width/2 - 32,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/explore/events.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadiusGeometry.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText(gradient: AppGradients.greenGradientWithPercentage, text: "Events", textStyle: textTheme.labelLarge!),
                      Image.asset("assets/icons/arrow_up_right.png", width: 16, height: 16,),
                    ],
                  ),
                  Text("Browse all events", style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w100, color: AppColors.greySubtitle2),)
                ],
              ),
            ),
          ),
        ),
      ),

      ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/explore/sports.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadiusGeometry.circular(10)
            ),
            width: size.width/2 - 32,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText(gradient: AppGradients.greenGradientWithPercentage, text: "Sports", textStyle: textTheme.labelLarge!),
                      Image.asset("assets/icons/arrow_up_right.png", width: 16, height: 16,),
                    ],
                  ),
                  Text("Browse all Sports events", style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w100, color: AppColors.greySubtitle2),)
                ],
              ),
            ),
          ),
        ),
      ),

    ],
  );
}
