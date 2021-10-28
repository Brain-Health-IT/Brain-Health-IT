// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Shared/Themes/app_images.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class GoogleLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoogleLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 47,
        width: 297,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 4.0),
              )
            ],
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(10),
            border:
                Border.fromBorderSide(BorderSide(color: AppColors.confirm))),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    const SizedBox(width: 12),
                    Container(height: 56, width: 1, color: AppColors.confirm),
                  ],
                )),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Entrar com o Google", style: TextStyles.buttonText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
