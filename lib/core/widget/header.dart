import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_gradients.dart';
import 'gradient_text.dart';

Widget header({required TextTheme textTheme}) {
  return Column(
    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/map_pin.png", width: 20, height: 20,),
              SizedBox(width: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    gradient: AppGradients.whiteBlackGradientWithPercentage,
                    text: "Haldwani",
                    textStyle: textTheme.headlineSmall!,
                  ),
                  GradientText(
                    gradient: AppGradients.whiteBlackGradientWithPercentage,
                    text: "Uttrakhand, India",
                    textStyle: textTheme.headlineSmall!,
                  )
                ],
              ),
            ],
          ),

          Row(
            children: [
              Container(
                height: 25,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: AppGradients.greenGradientWithPercentage
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/zap.png", width: 14, height: 14,),
                      Text("Get Plus", style: textTheme.headlineMedium?.copyWith(color: AppColors.background),),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 6,),
              CircleAvatar(
                maxRadius: 12.5,
                backgroundImage: AssetImage("assets/home/pfp.jpg"),
              )
            ],
          )
        ],
      ),

      SizedBox(height: 20,),

      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.background,
          prefixIcon: Image.asset("assets/icons/search.png", width: 16, height: 16, scale: 4,),
          hintText: "Search for events",
          hintStyle: textTheme.bodyLarge?.copyWith(color: AppColors.greyLight, fontSize: 12,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.greyLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.greyLight, width: 1.5),
          ),
        ),
      ),
    ],
  );
}
