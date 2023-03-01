import 'package:flutter/material.dart';
import '../foundations/custom_colors.dart';

class AppLogoTitle extends StatelessWidget {
  final double fontSize;
  const AppLogoTitle({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      style: TextStyle(
        fontSize: fontSize,
      ),
      children: [
        const TextSpan(
          text: 'Green',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        TextSpan(
          text: 'grocer',
          style: TextStyle(
            color: CustomColors.secondaryColor,
          ),
        )
      ],
    ));
  }
}
