import 'package:flutter/material.dart';

import '../../../../common/foundations/app_shapes.dart';
import '../../../../common/foundations/app_sizes.dart';
import '../../../../common/foundations/app_spacings.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onPressed;
  const CategoryTile({
    Key? key,
    required this.category,
    this.isSelected = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacings.spacingInnerBase06),
          height: AppSizes.sizesBase07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppShapes.shapeBorderRadiusMd,
              ),
              color: isSelected ? Colors.black : Colors.white),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                fontSize: AppSizes.sizesBase04,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
