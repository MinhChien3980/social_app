import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

import 'login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // using FlutterSplashScreen.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterSplashScreen.fadeIn(
        backgroundImage: Image.asset("assets/image/Dark Background.png"),
        duration: const Duration(milliseconds: 3000),
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("assets/image/Group 6960.png"),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                width: 500,
                height: 500,
                child: Image.asset("assets/image/Component 7045.png"),
              ),
            ],
          ),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: const LoginPage(),
      ),
    );
  }
}
