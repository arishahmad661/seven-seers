import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget promoterButton({required TextTheme textTheme}) {
  return Container(
    width: 264,
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border.all(
            color: AppColors.card
        )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("See All Promoters", style: textTheme.titleLarge?.copyWith(fontSize: 12),),
        SizedBox(width: 16,),
        Image.asset("assets/icons/rounded_arrow_black.png", width: 20, height: 20,)
      ],
    ),
  );
}
