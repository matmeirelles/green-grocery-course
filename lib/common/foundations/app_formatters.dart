import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

mixin AppFormatters {
  static MaskTextInputFormatter phoneFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );
  static MaskTextInputFormatter cpfFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );
}
