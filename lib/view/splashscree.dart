
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/constants/colorconstants.dart';
import 'package:mobile_app/view/Loginscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: Center(
        child: FlutterSplashScreen.gif(
          gifPath: 'assets/nerwpic.png',
          gifWidth: 269,
          gifHeight: 474,
          nextScreen: LoginScreen(),
          duration: const Duration(milliseconds: 3515),
          onInit: () async {
            debugPrint("onInit");
          },
          onEnd: () async {
            debugPrint("onEnd 1");
          },
        )
      ),
    );
  }
}


