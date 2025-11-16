import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widget/green_gradient_button.dart';

Widget eventCard({required TextTheme textTheme, required String dateTime, required String name, required String location, required String price, required String asset}) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 2.0),
    child: SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(20.05))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all( 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(14.1),
                  child: SizedBox(
                    height: 80,
                    width: 188,
                    child: Image.asset(asset, fit: BoxFit.fill,),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dateTime, style: textTheme.titleSmall?.copyWith(color: AppColors.secondary),),
                        SizedBox(height: 8,),
                        Text(name, style: textTheme.headlineMedium,),
                        SizedBox(height: 4,),
                        Text(location, style: textTheme.titleLarge?.copyWith(color: AppColors.greySubtitle),),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(price, style: textTheme.titleLarge?.copyWith(color: AppColors.greySubtitle2),),
                            greenGradientButton(textTheme: textTheme, text: "Book Now"),

                          ],
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                      top: 5,
                      right: 5,
                      child: Image.asset("assets/icons/heart.png", width: 17.33, height: 17.33,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

