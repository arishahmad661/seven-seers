import 'package:flutter/material.dart';
import 'package:seven_seers/features/concert_detail/presentation/pages/concert_detail_page.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_gradients.dart';
import '../../../../core/widget/gradient_text.dart';

Widget trendingCard({required TextTheme textTheme, required BuildContext context}) {
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConcertDetailPage(),));
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(30.0))),
      child: SizedBox(
        height: 500,
        width: 290,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, right: 24.0, left: 24.0),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(25),
                child: SizedBox(
                  width: 272,
                  height: 340,
                  child: Image.asset("assets/home/poster.jpg", fit: BoxFit.cover,),
                ),
              ),
            ),
    
            Padding(
              padding: const EdgeInsets.only(top: 7, bottom: 24, right: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sunday 21 August, 6:00PM onwards", style: textTheme.bodyLarge?.copyWith(color: AppColors.primary),),
                  GradientText(gradient: AppGradients.whiteBlackGradientWithPercentage, text: "Nelangsa Randung", textStyle: textTheme.labelMedium!),
                  GradientText(gradient: AppGradients.whiteBlackGradientWithPercentage, text: "in Delhi 2025", textStyle: textTheme.labelMedium!),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Image.asset("assets/icons/big_line.png", width: 235, height: 1,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Phenoix Palassio, Lucknow", style: textTheme.bodyLarge?.copyWith(color: AppColors.greyMedium),),
                      Image.asset("assets/icons/arrow_up_right.png", width: 16, height: 16,),
                    ],
                  ),
                  Text("₹ 1,999 Onwards", style: textTheme.bodyLarge?.copyWith(color: AppColors.textPrimary, fontWeight: FontWeight.w700),),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
