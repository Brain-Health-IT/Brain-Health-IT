// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class AppBarWidget extends StatelessWidget {
  final Image profileImg;
  final String user;
  const AppBarWidget({Key? key, required this.profileImg, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: SizedBox(
              height: 55,
              width: 55,
              child: profileImg,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15),
            child: Text.rich(
              TextSpan(
                text: 'Olá, ',
                style: GoogleFonts.lato(
                  color: AppColors.shape,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                      text: user, style: TextStyle(fontWeight: FontWeight.w800))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 94, right: 10, top: 40),
            child: IconButton(
              iconSize: 30,
              color: AppColors.shape,
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 40),
            child: IconButton(
              iconSize: 30,
              color: AppColors.shape,
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/homeSLogin');
              },
            ),
          ),
        ],
      ),
      height: 150,
      color: AppColors.green,
    );
  }
}
