import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

Widget navigationButton({required BuildContext context, required TextTheme textTheme, required String text, required Widget nextPage}) {
  return InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => nextPage));
    },
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(15),
          color: AppColors.grey
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: textTheme.headlineSmall,),
      )),
    ),
  );
}
