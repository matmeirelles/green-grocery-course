import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_sizes.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/foundations/custom_colors.dart';
import 'package:green_grocery_course/common/services/util_services.dart';
import 'package:green_grocery_course/features/product_details/presentation/product_details_screen.dart';

import '../../../../common/models/item_model.dart';

class ItemTile extends StatefulWidget {
  final ItemModel item;

  const ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetailsScreen(
                    item: widget.item,
                  ))),
          child: Card(
            elevation: 1.0,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacings.spacingInnerBase03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: Image.asset(widget.item.imgUrl)),
                  Text(
                    widget.item.name,
                    style: const TextStyle(
                      fontSize: AppSizes.sizesBase04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(color: CustomColors.customColorSwatch),
                      children: [
                        TextSpan(
                          text: utilsServices.priceToCurrency(widget.item.price),
                          style: const TextStyle(fontSize: AppSizes.sizesBase03),
                        ),
                        TextSpan(
                          text: '/${widget.item.measureUnit}',
                          style: const TextStyle(
                            fontSize: AppSizes.sizesBase02,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: AppSizes.sizesBase,
          right: AppSizes.sizesBase,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(15),
                  )),
              height: AppSizes.sizesBase09,
              width: AppSizes.sizesBase09,
              child: const Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
