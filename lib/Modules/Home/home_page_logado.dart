// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saude_mental_ti/Shared/AppBar/app_bar.dart';
import 'package:saude_mental_ti/Shared/Buttons/circle_button_widget.dart';
import 'package:saude_mental_ti/Shared/CardPosts/ultimos_posts.dart';
import 'package:saude_mental_ti/Shared/CardPosts/ultimas_forum.dart';

class HomePageLogado extends StatefulWidget {
  const HomePageLogado({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageLogado> {
  @override
  Widget build(BuildContext context) {
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
                      title: 'Sair',
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/homeSLogin');
                      },
                      icon: FontAwesomeIcons.signOutAlt),
                ],
              ),
            ),
            //----- Fim Menu -----

            //----- Ultimos Posts -----
            ContainerPrincipal(),
            //----- Fim Ultimos Posts ------
            SizedBox(
              height: 26,
            ),
            //----- Ultimas do Forum -----
            UltimasForum(),
            //----- Fim -----

            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
