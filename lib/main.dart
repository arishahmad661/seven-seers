import 'package:flutter/material.dart';
import 'package:seven_seers/features/explore/presentation/pages/explore_page.dart';
import 'package:seven_seers/features/submit/presentation/pages/submit_page.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '7 Seers',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SubmitPage(),
    );
  }
}

