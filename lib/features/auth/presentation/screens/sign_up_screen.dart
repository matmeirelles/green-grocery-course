import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_formatters.dart';
import 'package:green_grocery_course/common/widgets/app_button.dart';
import 'package:green_grocery_course/common/widgets/app_form.dart';
import 'package:green_grocery_course/common/widgets/app_text_field.dart';

import '../../../../common/foundations/app_spacings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  AppForm(
                    children: [
                      Center(
                        child: Text(
                          'Cadastro',
                          style: TextStyle(
                            fontSize: AppSpacings.spacingInnerBase08,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                      const AppTextField(
                        label: 'email',
                        icon: Icons.email,
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                      const AppTextField(
                        label: 'senha',
                        icon: Icons.lock,
                        isSecret: true,
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                      const AppTextField(
                        label: 'nome',
                        icon: Icons.person,
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                      AppTextField(
                        label: 'celular',
                        icon: Icons.phone,
                        inputFormatters: [AppFormatters.phoneFormatter],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                      AppTextField(
                        label: 'cpf',
                        icon: Icons.contact_page,
                        inputFormatters: [AppFormatters.cpfFormatter],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                      AppButton(
                        lable: 'Cadastrar usuário',
                        onClick: () {},
                      ),
                      const SizedBox(
                        height: AppSpacings.spacingInnerBase04,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
