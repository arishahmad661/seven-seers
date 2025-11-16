import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget ratingDisplay({required String rating}) {
  return Container(
    width: 59,
    height: 37,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: AppColors.card,
        )
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset("assets/icons/star.png", width: 14, height: 14,),
          Text(" $rating")
        ],
      ),
    ),
  );
}
