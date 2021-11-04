// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class CardPost extends StatelessWidget {
  const CardPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: heightScreen * 0.2,
      width: widthScreen * 0.92,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 4.0),
          ),
        ],
        color: AppColors.shape,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(BorderSide(color: AppColors.confirm)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            Text(
              'Como você está?',
              style: TextStyles.titleBold,
            ),
            Text(
              'Como está sua saude mental?',
              style: TextStyles.titleRegular,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Já parou para pensar no assunto? Alguma vez refletiu se os seus pensamentos, ideias e sentimentos estão em harmonia? Sabe a diferença entre saúde mental e doença ou transtorno mental?  ...',
                style: TextStyles.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
