import 'package:flutter/material.dart';

import '../foundations/app_shapes.dart';
import '../foundations/custom_colors.dart';

class AppSearchTextField extends StatelessWidget {
  const AppSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Pesquise aqui',
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
        ),
      ),
    );
  }
}
