import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_gradients.dart';
import '../../../../core/widget/gradient_text.dart';

Widget cashbackInfo({required TextTheme textTheme}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(gradient: AppGradients.whiteBlueGradient, text: "10% Cashback", textStyle: textTheme.labelLarge!),
            Text("on HDFC Bank Debit & Credit Cards", style: textTheme.bodyLarge?.copyWith(color: AppColors.lightBlueText),)
          ],
        ),
      ),

      Spacer(),

      Container(
        height: 90,
        width: 10,
        decoration: BoxDecoration(
            color: AppColors.containerYellow,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            )
        ),
      ),

      SizedBox(height: 30,),
    ],
  );
}
