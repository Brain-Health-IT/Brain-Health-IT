// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class CircleButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData icon;

  const CircleButtonWidget(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            child: Center(
              child: Icon(
                icon,
                color: AppColors.shape,
                size: 31,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.blue,
            ),
            height: 70,
            width: 70,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyles.titleBoldBackground,
        ),
      ],
    );
  }
}
