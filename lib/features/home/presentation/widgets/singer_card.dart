import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget singerCard({required textTheme, required String text, required String asset}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15) ,
              child: SizedBox(
                height: 80,
                width: 80,
                child: Image.asset(asset, fit: BoxFit.cover,),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Image.asset("assets/icons/green_heart.png", height: 10, width: 10,),
            ),

          ],
        ),
      ),
      SizedBox(height: 8,),
      Text(text, style: textTheme.bodyLarge,),
    ],
  );
}

