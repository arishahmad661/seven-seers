import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget concertInfo({required TextTheme textTheme}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Casa Bacardi on Tour | Lucknow", style: textTheme.labelLarge,),
        Text("ft. Aditya Rikhari", style: textTheme.labelLarge,),
        SizedBox(height: 8,),
        Image.asset("assets/icons/line_sep.png", height: 1, width: 375,),

        SizedBox(height: 8,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.greyLight,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/icons/calendar.png", height: 20, width: 20,),
              ),
            ),

            SizedBox(width: 8,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Date and Time", style: textTheme.headlineSmall?.copyWith(color: AppColors.greyLight),),
                Text("Sun, 21 Sept, 5:00 PM", style: textTheme.headlineMedium,)
              ],
            ),

            Spacer(),

            Image.asset("assets/icons/arrow_up_right.png", width: 16, height: 16,),

          ],
        ),

      ],
    ),
  );
}
