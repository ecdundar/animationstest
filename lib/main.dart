import 'package:animationtest/screens/AnimatedOpacityScreen.dart';
import 'package:animationtest/screens/ComposedAnimations.dart';
import 'package:animationtest/screens/RotationAnimations.dart';
import 'package:animationtest/screens/ScaleAnimations.dart';
import 'package:animationtest/screens/TranslateAnimations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: RotationAnimations(),
        //home: ScaleAnimations());
        //home: TranslateAnimations());
        //home: ComposedAnimations());
        home: const AnimatedOpactiyScreen());
  }
}
