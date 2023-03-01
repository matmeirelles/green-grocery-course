import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/custom_colors.dart';

import 'features/auth/presentation/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: CustomColors.primaryColor,
        primarySwatch: CustomColors.customColorSwatch,
        scaffoldBackgroundColor: CustomColors.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
