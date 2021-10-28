// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saude_mental_ti/Shared/AppBar/app_bar.dart';
import 'package:saude_mental_ti/Shared/Buttons/circle_button_widget.dart';
import 'package:saude_mental_ti/Shared/Themes/app_text_styles.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class HomePageLogado extends StatefulWidget {
  const HomePageLogado({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageLogado> {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //----- AppBar -----
            AppBarWidget(
                profileImg: Image.asset('assets/images/profile.png'),
                user: 'Gelson'),
            //----- Fim AppBar -----

            //----- Menu -----
            Padding(
              padding: const EdgeInsets.only(
                  left: 23, right: 23, top: 21, bottom: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButtonWidget(
                      title: 'Forum',
                      onPressed: () {},
                      icon: FontAwesomeIcons.commentDots),
                  SizedBox(
                    width: 25,
                  ),
                  CircleButtonWidget(
                      title: 'Blog',
                      onPressed: () {},
                      icon: FontAwesomeIcons.bloggerB),
                  SizedBox(
                    width: 17,
                  ),
                  CircleButtonWidget(
                      title: 'Profissionais',
                      onPressed: () {},
                      icon: FontAwesomeIcons.hospitalSymbol),
                  SizedBox(
                    width: 17,
                  ),
                  CircleButtonWidget(
                      title: 'Forum',
                      onPressed: () {},
                      icon: FontAwesomeIcons.commentDots),
                ],
              ),
            ),

            //----- Fim Menu -----

            //----- Ultimos Posts -----

            Container(
              height: heightScreen * 0.57,
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
                border:
                    Border.fromBorderSide(BorderSide(color: AppColors.confirm)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Ultimos Posts',
                      style: TextStyles.titleBold,
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                    color: AppColors.confirm,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                      border: Border.fromBorderSide(
                          BorderSide(color: AppColors.confirm)),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                    color: AppColors.confirm,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
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
                      border: Border.fromBorderSide(
                          BorderSide(color: AppColors.confirm)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //----- Cards Ultimos Posts -----

            //----- Card perguntas -----
            Container(
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
                      'Ultimos Posts',
                      style: TextStyles.titleBold,
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                    color: AppColors.confirm,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                      border: Border.fromBorderSide(
                          BorderSide(color: AppColors.confirm)),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                ],
              ),
            ),
            //----- Fim Card perguntas -----
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
