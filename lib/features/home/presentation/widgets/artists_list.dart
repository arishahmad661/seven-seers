import 'package:flutter/material.dart';
import 'package:seven_seers/features/home/presentation/widgets/singer_card.dart';

Widget artistsList({required TextTheme textTheme}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        children: [
          singerCard(textTheme: textTheme, text: "Karan Aujla", asset: 'assets/artists/karan_aujla.jpg',),
          singerCard(textTheme: textTheme, text: "Seedhe Maut", asset: 'assets/artists/seedhe_maut.jpg',),
          singerCard(textTheme: textTheme, text: "Arijit Singh", asset: 'assets/artists/arijit_singh.jpg',),
          singerCard(textTheme: textTheme, text: "Diljit Dosanjh", asset: 'assets/artists/diljit_dosanjh.jpg',),
          singerCard(textTheme: textTheme, text: "Arpit Massey", asset: 'assets/artists/arpit_massey.jpeg',),
        ],
      ),
    ),
  );
}
