import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_sizes.dart';

import '../../../../common/consts/app_categories.dart';
import '../../../../common/foundations/app_spacings.dart';
import 'category_tile.dart';

// ignore: must_be_immutable
class SearchCategories extends StatefulWidget {
  String? selectedCategory;
  SearchCategories({
    Key? key,
    this.selectedCategory,
  }) : super(key: key);

  @override
  State<SearchCategories> createState() => _SearchCategoriesState();
}

class _SearchCategoriesState extends State<SearchCategories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.sizesBase12,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: AppSpacings.spacingLayoutBase02),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          List<String> categories = AppCategories.categories;
          return CategoryTile(
            category: categories[index],
            isSelected: categories[index] == widget.selectedCategory,
            onPressed: () {
              setState(() {
                widget.selectedCategory = categories[index];
              });
            },
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
          width: AppSpacings.spacingInnerBase02,
        ),
        itemCount: AppCategories.categories.length,
      ),
    );
  }
}
