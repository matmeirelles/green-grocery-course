import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/widgets/app_button.dart';
import 'package:green_grocery_course/common/widgets/app_form.dart';
import 'package:green_grocery_course/common/widgets/app_text_field.dart';

import '../../../../common/foundations/app_spacings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
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
              const AppTextField(
                label: 'celular',
                icon: Icons.phone,
              ),
              const SizedBox(
                height: AppSpacings.spacingInnerBase04,
              ),
              const AppTextField(
                label: 'cpf',
                icon: Icons.contact_page,
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
    );
  }
}
