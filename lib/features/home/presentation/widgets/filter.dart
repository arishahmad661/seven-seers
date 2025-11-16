import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'filter_option.dart';

Widget filter({required TextTheme textTheme}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(right: 24.0, left: 24.0),
      child: Row(
        children: [
          IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                        color: AppColors.greyLight
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Center(child: Row(
                    children: [
                      Image.asset("assets/icons/sliders.png", width: 12, height: 12,),
                      Text(" Filter ", style: textTheme.bodyLarge,),
                      Image.asset("assets/icons/arrow_down.png", width: 14, height: 14,),

                    ],
                  )),
                ),
              ),
            ),
          ),
          filterOption(textTheme: textTheme, text: "Today"),
          filterOption(textTheme: textTheme, text: "Tomorrow"),
          filterOption(textTheme: textTheme, text: "10 km Far Away"),
          filterOption(textTheme: textTheme, text: "Music"),
        ],
      ),
    ),
  );
}
