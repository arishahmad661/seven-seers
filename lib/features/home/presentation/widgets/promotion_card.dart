import 'package:flutter/material.dart';
import 'package:seven_seers/core/theme/app_gradients.dart';
import 'package:seven_seers/core/widget/gradient_text.dart';
import 'package:seven_seers/features/home/presentation/widgets/rating_display.dart';
import '../../../../core/theme/app_colors.dart';

Widget promotionCard({required TextTheme textTheme, required String title, required String description, required String rating, required String asset}) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
    child: SizedBox(
      width: 400,
      height: 223,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(20.05))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(14.1),
                    child: SizedBox(
                      width: 155,
                      height: 164,
                      child: Image.asset(asset, fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(gradient: AppGradients.greenGradient, text: title, textStyle: textTheme.headlineLarge!),
                    SizedBox(height: 4,),
                    Image.asset("assets/icons/big_line.png", width: 175, height: 1,),
                    SizedBox(height: 8,),
                    Text(description, softWrap: true, overflow: TextOverflow.visible,),
                    SizedBox(height: 16,),

                    Row(
                      children: [
                        ratingDisplay(rating: rating),

                        SizedBox(width: 8,),

                        Container(
                          width: 111,
                          decoration: BoxDecoration(
                            gradient: AppGradients.greenGradient,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Explore more", style: textTheme.titleLarge?.copyWith(color: AppColors.background),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Image.asset("assets/icons/rounded_arrow.png", width: 20, height: 20,),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
