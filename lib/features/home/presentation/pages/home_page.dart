import 'package:flutter/material.dart';
import '../widgets/artists_list.dart';
import '../widgets/cashback_info.dart';
import '../widgets/content_separator.dart';
import '../widgets/event_card.dart';
import '../widgets/filter.dart';
import '../widgets/promoter_button.dart';
import '../widgets/promotion_card.dart';
import '../widgets/selection_icons.dart';
import '../widgets/trending_card.dart';
import '../widgets/user_location_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              userLocationHeader(textTheme: textTheme),

              selectionIcons(textTheme: textTheme),

              contentSeparator(textTheme: textTheme, title: "Trending this week"),

              trendingCard(textTheme: textTheme, context: context),

              contentSeparator(textTheme: textTheme, title: "Artists on Tixoo"),

              artistsList(textTheme: textTheme),

              contentSeparator(textTheme: textTheme, title: "All Events"),

              filter(textTheme: textTheme),

              SizedBox(height: 12,),

              Column(
                children: List.generate(5, (index) {
                  return eventCard(
                    textTheme: textTheme,
                    dateTime: "Sun, 25 Jan, 7:00 PM",
                    name: "Sartinder Sartaaj Live in Lucknow",
                    location: "Ekana International Stadium, Lucknow",
                    price: "₹ 1499 Onwards",
                    asset: "assets/home/concert.jpg"
                  );
                }),
              ),

              contentSeparator(textTheme: textTheme, title: "Offers On Tixoo"),

              cashbackInfo(textTheme: textTheme),

              contentSeparator(textTheme: textTheme, title: "Promoters On Tixoo"),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(2, (index) {
                    return promotionCard(
                        textTheme: textTheme,
                        title: "Drix Entertainment",
                        description: "Drix entertainment media is an event company based in Lucknow! They specialist in creating music, comedy and concerts.",
                        rating: "4.8",
                        asset: "assets/home/promoter.jpg"
                      );
                  }),
                ),
              ),

              SizedBox(height: 16,),

              promoterButton(textTheme: textTheme)

            ],
          ),
        ),
      ),
    );
  }
}
