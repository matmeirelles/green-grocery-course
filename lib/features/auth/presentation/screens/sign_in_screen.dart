import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_grocery_course/common/consts/app_categories.dart';
import 'package:green_grocery_course/common/foundations/app_sizes.dart';
import 'package:green_grocery_course/common/foundations/app_spacings.dart';
import 'package:green_grocery_course/common/widgets/app_form.dart';
import 'package:green_grocery_course/common/widgets/app_logo_title.dart';
import 'package:green_grocery_course/common/widgets/app_text_field.dart';
import 'package:green_grocery_course/common/widgets/app_button.dart';
import 'package:green_grocery_course/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:green_grocery_course/features/base/presentation/screens/base_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                      const AppLogoTitle(
                        fontSize: AppSizes.sizesBase10,
                      ),
                      SizedBox(
                        height: AppSizes.sizesBase06,
                        child: DefaultTextStyle(
                          style: const TextStyle(fontSize: AppSizes.sizesBase05, color: Colors.white),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: _getAnimatedTexts(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppForm(
                children: <Widget>[
                  const AppTextField(
                    icon: Icons.email,
                    label: 'email',
                  ),
                  const SizedBox(
                    height: AppSpacings.spacingInnerBase04,
                  ),
                  const AppTextField(
                    icon: Icons.lock,
                    label: 'senha',
                    isSecret: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.spacingInnerBase04,
                  ),
                  AppButton(
                    label: 'Entrar',
                    onClick: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (context) => const BaseScreen()));
                    },
                  ),
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
                  const Row(
                    children: <Widget>[
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
                  AppButton(
                    label: 'Criar conta',
                    onClick: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen())),
                    isSecondary: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.spacingInnerBase04,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List<AnimatedText> _getAnimatedTexts() {
    final List<AnimatedText> animatedTexts = [];
    for (String category in AppCategories.categories) {
      animatedTexts.add(FadeAnimatedText(category));
    }
    return animatedTexts;
  }
}
