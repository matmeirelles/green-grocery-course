import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_shapes.dart';

import '../foundations/app_sizes.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onClick;
  final bool isSecondary;
  const AppButton({
    Key? key,
    required this.label,
    this.onClick,
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
                  borderRadius: BorderRadius.circular(AppShapes.shapeBorderRadiusMd),
                ),
              ),
              onPressed: onClick,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: AppSizes.sizesBase04,
                ),
              ),
            )
          : OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppShapes.shapeBorderRadiusMd),
                  ),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                  )),
              onPressed: onClick,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: AppSizes.sizesBase04,
                ),
              ),
            ),
    );
  }
}
