import 'package:flutter/material.dart';
import '../../../core/theme/app_gradients.dart';
import '../../../core/widget/gradient_text.dart';
import '../../../core/widget/green_gradient_button.dart';

Widget cashbackButton(Size size, TextTheme textTheme) {
  return ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(10),
    child: Card(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/explore/cashback.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadiusGeometry.circular(10)
          ),
          width: size.width - 54,
          height: 124,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        greenGradientButton(textTheme: textTheme, text: "Assured", radius: 16.0, fontWeight: FontWeight.w900),
                        Image.asset("assets/icons/arrow_up_right.png", width: 16, height: 16,),
                      ],
                    ),
                    GradientText(gradient: AppGradients.greenGradientWithPercentage, text: "10% cashback", textStyle: textTheme.labelLarge!),
                    Text("On every purchase\nwith Tixoo+", style: textTheme.bodyLarge?.copyWith(fontSize: 13),),
                  ],
                ),
              ),
            ],
          )
      ),
    ),
  );
}
