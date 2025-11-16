import 'package:flutter/material.dart';
import '../../../../core/widget/header.dart';
import '../../widgets/cashback_button.dart';
import '../../widgets/club_button.dart';
import '../../widgets/event_and_sport_option.dart';
import '../../widgets/live_event.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),

              header(textTheme: textTheme),

              SizedBox(height: 20,),

              cashbackButton(size, textTheme),

              SizedBox(height: 2,),

              eventAndSportsOption(size, textTheme),

              SizedBox(height: 2,),

              clubButton(size, textTheme),

              SizedBox(height: 2,),

              liveEvent(size, textTheme),
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
