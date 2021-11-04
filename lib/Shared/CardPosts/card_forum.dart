// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class CardForum extends StatelessWidget {
  const CardForum({Key? key}) : super(key: key);

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
              'O procrastinador',
              style: TextStyles.titleBold,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Tenho milhares de coisas para fazer, mas deixo tudo para cima da hora. Quero colocar minha vida nos trilhos para poder sair da pandemia como uma pessoa melhor.',
                style: TextStyles.body,
              ),
            ),
            Divider(
              color: AppColors.confirm,
              thickness: 0.8,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.commentAlt),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('2 Comentarios'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
