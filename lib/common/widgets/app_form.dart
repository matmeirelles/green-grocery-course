import 'package:flutter/material.dart';

import '../foundations/app_shapes.dart';
import '../foundations/app_spacings.dart';

class AppForm extends StatelessWidget {
  final List<Widget> children;
  const AppForm({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacings.spacingLayoutBase04,
        horizontal: AppSpacings.spacingLayoutBase05,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppShapes.shapeBorderRadiusXLg),
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
