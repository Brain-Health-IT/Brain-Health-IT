// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Shared/CardPosts/card_forum.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

import 'card_posts.dart';

class UltimasForum extends StatefulWidget {
  const UltimasForum({Key? key}) : super(key: key);

  @override
  _UltimasForumState createState() => _UltimasForumState();
}

class _UltimasForumState extends State<UltimasForum> {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: heightScreen * 0.31,
      width: widthScreen * 0.95,
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
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.confirm),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Ultimas do Forum',
              style: TextStyles.titleBold,
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 0.8,
            color: AppColors.confirm,
          ),
          SizedBox(
            height: 10,
          ),
          CardForum(),
          SizedBox(
            height: 17,
          ),
        ],
      ),
    );
  }
}
