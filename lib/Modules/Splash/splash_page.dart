import 'package:flutter/material.dart';
/* import 'package:saude_mental_ti/Shared/Auth/auth_controller.dart';
 */
import 'package:saude_mental_ti/Shared/Themes/app_images.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*  final authController = AuthController();
    authController.currentUser(context); */
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.logo)),
        ],
      ),
    );
  }
}
