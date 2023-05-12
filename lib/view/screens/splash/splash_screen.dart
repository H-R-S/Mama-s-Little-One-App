import 'dart:async';
import 'package:flutter/material.dart';
import '../../../resources/constants/icons.dart';
import '../../../resources/constants/style.dart';
import '../../../routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

    return Scaffold(
        backgroundColor: primay,
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Image.asset(mamaIcon, height: 200),
                  const SizedBox(height: 20),
                  const Text("Mama Little One", style: style),
                  const SizedBox(height: 20),
                  Text("\"Helping new parents understand their babies\"",
                      textAlign: TextAlign.center,
                      style: style.copyWith(
                          fontSize: 20, fontFamily: "HachiMaruPop"))
                ]))));
  }
}
