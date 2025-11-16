import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widget/green_gradient_button.dart';

Widget paymentInfo({required TextTheme textTheme}) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Base Price", style: textTheme.bodyLarge?.copyWith(color: AppColors.greySubtitle2),),
                Text("₹ 699", style: textTheme.headlineLarge),
              ],
            ),

            Spacer(),

            greenGradientButton(textTheme: textTheme, text: "Book Now")
          ],
        ),
      ),
    ),
  );
}
