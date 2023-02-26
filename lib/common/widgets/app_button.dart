import 'package:flutter/material.dart';

import '../foundations/app_sizes.dart';

class AppButton extends StatelessWidget {
  final String title;
  final bool isSecondary;
  const AppButton({
    Key? key,
    required this.title,
    this.isSecondary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.sizesBase12,
      child: !isSecondary
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.sizesBase03),
                ),
              ),
              onPressed: () {},
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: AppSizes.sizesBase04,
                ),
              ),
            )
          : OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.sizesBase03),
                  ),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                  )),
              onPressed: () {},
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: AppSizes.sizesBase04,
                ),
              ),
            ),
    );
  }
}
