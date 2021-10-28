// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Shared/Buttons/google_login_button.dart';
import 'package:saude_mental_ti/Shared/Themes/app_images.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';
import 'package:saude_mental_ti/Shared/input/input_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 107),
          child: Center(
            child: Column(
              children: [
                Center(child: Image.asset(AppImages.logo)),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: InputWidget(
                    icon: Icons.mail,
                    label: 'Email',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19),
                  child: InputWidget(
                    icon: Icons.password_sharp,
                    label: 'Senha',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 53),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4.0,
                          spreadRadius: 0.0,
                          offset: Offset(2.0, 4.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.confirm,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/homeLogado');
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyles.buttonBackground,
                      ),
                    ),
                    height: 41,
                    width: 138,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.confirm,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 3.0),
                              blurRadius: 4.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GoogleLoginButton(
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
