import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled8/screens/dashboard_screen.dart';
import 'package:untitled8/screens/video_call_screen.dart';
import 'package:untitled8/utils/ui_helpers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/splash_background.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) {
                  //     return const Authenticate();
                  //   },
                  // ));
                  Get.off(() => DashBord());
                },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Get Started >>",
                    style: TextStyle(
                      color: ColorUtils.textBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 27,
                ),
                Text(
                  "Version 1.0",
                  style: TextStyle(
                    color: ColorUtils.textBlue,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "Powered by Eagle corp.",
                  style: TextStyle(
                    color: ColorUtils.textBlue,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
              ]),
        ),
      ),
    );
  }
}
