import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/widgets/app_logo_title.dart';

import '../../../../common/foundations/app_sizes.dart';
import '../../../../common/widgets/app_search_text_field.dart';
import '../widgets/search_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const AppLogoTitle(fontSize: AppSizes.sizesBase08),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: AppSpacings.spacingInnerBase06),
              child: InkWell(
                //TODO: Change InkWell format to a circle
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: const Center(
                  child: Badge(
                    label: Text('10'),
                    child: Icon(
                      Icons.shopping_cart,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                  top: AppSpacings.spacingLayoutBase,
                  left: AppSpacings.spacingLayoutBase02,
                  right: AppSpacings.spacingLayoutBase02),
              child: AppSearchTextField(),
            ),
            const SizedBox(
              height: AppSpacings.spacingInnerBase,
            ),
            SearchCategories(),
            const SizedBox(
              height: AppSpacings.spacingInnerBase,
            ),
          ],
        ));
  }
}
