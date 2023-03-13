import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/models/item_model.dart';
import 'package:green_grocery_course/features/home/presentation/widgets/item_tile.dart';

class ItemGrid extends StatelessWidget {
  final List<ItemModel> items;

  const ItemGrid({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
          left: AppSpacings.spacingLayoutBase02,
          right: AppSpacings.spacingLayoutBase02,
          bottom: AppSpacings.spacingLayoutBase),
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacings.spacingInnerBase,
        crossAxisSpacing: AppSpacings.spacingInnerBase,
        //TODO: Better understand the 'childAspectRatio'
        childAspectRatio: 9 / 10,
      ),
      itemCount: items.length,
      itemBuilder: (_, index) {
        return ItemTile(
          item: items[index],
        );
      },
    );
  }
}
