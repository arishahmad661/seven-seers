import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_gradients.dart';
import '../../../../core/widget/gradient_text.dart';

Widget selectionIcons({required TextTheme textTheme}) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, right: 20.0, left: 20.0),
    child: Container(
      height: 75,
      width: 400,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: AppColors.textPrimary,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset("assets/icons/music.png", height: 20, width: 20,),
              SizedBox(height: 8,),
              GradientText(gradient: AppGradients.greenGradient, text: "Music", textStyle: textTheme.bodyLarge!)
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Image.asset("assets/icons/line.png"),
          ),


          Column(
            children: [
              Image.asset("assets/icons/standup.png", height: 20, width: 20,),
              SizedBox(height: 8,),
              GradientText(gradient: AppGradients.blackWhiteGradientWithPercentage, text: "Music", textStyle: textTheme.bodyLarge!)
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Image.asset("assets/icons/line.png"),
          ),

          Column(
            children: [
              Image.asset("assets/icons/poetry.png", height: 20, width: 20,),
              SizedBox(height: 8,),
              GradientText(gradient: AppGradients.blackWhiteGradientWithPercentage, text: "Music", textStyle: textTheme.bodyLarge!)
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Image.asset("assets/icons/line.png"),
          ),

          Column(
            children: [
              Image.asset("assets/icons/theatre.png", height: 20, width: 20,),
              SizedBox(height: 8,),
              GradientText(gradient: AppGradients.blackWhiteGradientWithPercentage, text: "Music", textStyle: textTheme.bodyLarge!)
            ],
          ),
        ],
      ),
    ),
  );
}
