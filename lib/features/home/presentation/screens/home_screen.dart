import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/widgets/app_logo_title.dart';

import '../../../../common/foundations/app_sizes.dart';

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
            padding: const EdgeInsets.only(right: AppSpacings.spacingInnerBase02),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                )),
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
