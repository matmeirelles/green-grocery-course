import 'package:flutter/material.dart';

import '../foundations/app_shapes.dart';
import '../foundations/custom_colors.dart';

class AppSearchTextField extends StatelessWidget {
  const AppSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search here',
        hintStyle: TextStyle(
          color: CustomColors.secondaryColor,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: CustomColors.secondaryColor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppShapes.shapeBorderRadiusLg,
            ),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            )),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
