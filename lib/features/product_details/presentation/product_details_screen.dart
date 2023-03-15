import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_sizes.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/foundations/custom_colors.dart';
import 'package:green_grocery_course/common/models/item_model.dart';
import 'package:green_grocery_course/common/widgets/app_form.dart';

import '../../../common/services/util_services.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ItemModel item;

  ProductDetailsScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacings.spacingLayoutBase02),
              child: Image.asset(item.imgUrl),
            ),
          ),
          AppForm(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: AppSizes.sizesBase06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(height: AppSpacings.spacingInnerBase02),
              Text.rich(
                TextSpan(
                  style: const TextStyle(
                    color: CustomColors.customColorSwatch,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: utilsServices.priceToCurrency(item.price),
                      style: const TextStyle(fontSize: AppSizes.sizesBase04),
                    ),
                    TextSpan(
                      text: '/${item.measureUnit}',
                      style: const TextStyle(
                        fontSize: AppSizes.sizesBase03,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: AppSpacings.spacingInnerBase02),
              Text(item.description),
            ],
          )
        ],
      ),
    );
  }
}
