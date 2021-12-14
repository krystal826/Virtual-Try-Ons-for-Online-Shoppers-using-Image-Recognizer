import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:vto_sunglasses/camera_with_filter_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: const CameraWithFilterScreen(),
      title: const Text(
        "Virtual Try On App",
        style: TextStyle(
          fontSize: 55,
          color: Colors.deepPurpleAccent,
          fontFamily: "Signatra",
        ),
      ),
      image: Image.asset("images/icon.png"),
      backgroundColor: Colors.white,
      photoSize: 140,
      loaderColor: Colors.deepPurple,
      loadingText: const Text(
        "from VTO",
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 16.0,
          fontFamily: "Brand Bold"
        ),
      ),
    );
  }
}
