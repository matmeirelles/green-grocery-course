import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/foundations/app_shapes.dart';
import 'package:green_grocery_course/common/foundations/app_sizes.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/foundations/custom_colors.dart';
import 'package:green_grocery_course/common/widgets/app_text_field.dart';
import 'package:green_grocery_course/common/widgets/app_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text.rich(TextSpan(
                        style: const TextStyle(
                          fontSize: AppSizes.sizesBase10,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Green',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'grocer',
                            style: TextStyle(
                              color: CustomColors.secondaryColor,
                            ),
                          )
                        ],
                      )),
                      SizedBox(
                        height: AppSizes.sizesBase06,
                        child: DefaultTextStyle(
                          style: const TextStyle(fontSize: AppSizes.sizesBase05, color: Colors.white),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              FadeAnimatedText('Frutas'),
                              FadeAnimatedText('Carnes'),
                              FadeAnimatedText('Verduras'),
                              FadeAnimatedText('Legumes'),
                              FadeAnimatedText('Cereais'),
                              FadeAnimatedText('Laticínios'),
                              FadeAnimatedText('Frios'),
                              FadeAnimatedText('Orgânicos'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacings.spacingLayoutBase04,
                  horizontal: AppSpacings.spacingLayoutBase05,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppShapes.shapeBorderRadiusXLg),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const AppTextField(
                      borderRadius: AppSizes.sizesBase03,
                      icon: Icons.email,
                      label: 'email',
                    ),
                    const SizedBox(
                      height: AppSpacings.spacingInnerBase04,
                    ),
                    const AppTextField(
                      borderRadius: AppSizes.sizesBase03,
                      icon: Icons.lock,
                      label: 'senha',
                      isSecret: true,
                    ),
                    const SizedBox(
                      height: AppSpacings.spacingInnerBase04,
                    ),
                    const AppButton(title: 'Entrar'),
                    const SizedBox(
                      height: AppSpacings.spacingInnerBase04,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Esqueceu a senha?",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSpacings.spacingInnerBase04,
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: AppSpacings.spacingInnerBase03,
                        ),
                        Text('Ou'),
                        SizedBox(
                          width: AppSpacings.spacingInnerBase03,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSpacings.spacingInnerBase04,
                    ),
                    const AppButton(
                      title: 'Criar conta',
                      isSecondary: true,
                    ),
                    const SizedBox(
                      height: AppSpacings.spacingInnerBase04,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
