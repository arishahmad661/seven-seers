import 'package:flutter/material.dart';
import 'package:seven_seers/features/concert_detail/presentation/pages/concert_detail_page.dart';
import 'package:seven_seers/features/explore/presentation/pages/explore_page.dart';
import 'package:seven_seers/features/home/presentation/pages/home_page.dart';
import '../widgets/navigation_button.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                navigationButton(context: context, textTheme: textTheme, text: "Explore", nextPage: ExplorePage()),

                SizedBox(width: 8,),

                navigationButton(context: context, textTheme: textTheme, text: "Home Page", nextPage: HomePage()),

                SizedBox(width: 8,),

                navigationButton(context: context, textTheme: textTheme, text: "Concert Detail Page", nextPage: ConcertDetailPage()),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
