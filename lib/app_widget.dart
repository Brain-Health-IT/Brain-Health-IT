import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Modules/Home/home_page_semlogin.dart';
import 'package:saude_mental_ti/Modules/Splash/splash_page.dart';

import 'Modules/Home/home_page_logado.dart';
import 'Modules/Login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Tirar a barra de debug.
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/homeSLogin", //Rota incial splash page.
      routes: {
        "/homeLogado": (context) => const HomePageLogado(),
        "/homeSLogin": (context) => const HomePageSLogin(),
        "/login": (context) =>
            const LoginPage(), //Rotas para as paginas da aplicação.
        "/splash": (context) => const SplashPage(),
      },
    );
  }
}
