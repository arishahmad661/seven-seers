import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_gradients.dart';

Widget liveEvent(Size size, TextTheme textTheme) {
  return ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(10),
    child: Card(
      child: Container(
        decoration: BoxDecoration(
            gradient: AppGradients.lightGreenGradient,
            borderRadius: BorderRadiusGeometry.circular(10)
        ),
        width: size.width - 54,
        height: 128,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Live Everyday !", style: textTheme.headlineLarge?.copyWith(color: AppColors.background),),
              Row(
                children: [
                  Text("Created with ", style: textTheme.bodyLarge?.copyWith(color: AppColors.background),),
                  Image.asset("assets/icons/green_heart.png", width: 10, height: 10,),
                  Text(" in Lucknow, India", style: textTheme.bodyLarge?.copyWith(color: AppColors.background),),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
