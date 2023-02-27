import 'package:flutter/material.dart';

import '../foundations/app_sizes.dart';

class AppTextField extends StatefulWidget {
  final IconData? icon;
  final String? label;
  final bool isSecret;
  final TextInputType keyboardType;
  const AppTextField({Key? key, this.icon, this.label, this.isSecret = false, this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool? hideText;

  @override
  void initState() {
    hideText = widget.isSecret;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hideText!,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
        suffixIcon: widget.isSecret
            ? IconButton(
                onPressed: () {
                  setState(() {
                    hideText = !hideText!;
                  });
                },
                icon: Icon(hideText! ? Icons.visibility : Icons.visibility_off),
              )
            : null,
        labelText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.sizesBase03),
        ),
      ),
    );
  }
}
