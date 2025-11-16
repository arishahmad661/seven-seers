import 'package:flutter/material.dart';
import '../widgets/payment_info.dart';
import '../widgets/concert_info.dart';
import '../widgets/poster.dart';

class ConcertDetailPage extends StatelessWidget {
  const ConcertDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,), onPressed: (){Navigator.of(context).pop();},),
        actions: [
          Image.asset("assets/concert_detail/heart.png", width: 20, height: 20,),
          SizedBox(width: 8,),
          Image.asset("assets/concert_detail/share.png", width: 20, height: 20,),
          SizedBox(width: 8,),
        ],
      ),
      
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    poster(),

                    concertInfo(textTheme: textTheme),
                  ],
                ),
              ),
            ),
          ),

          paymentInfo(textTheme: textTheme)

        ],
      ),
    );
  }
}
