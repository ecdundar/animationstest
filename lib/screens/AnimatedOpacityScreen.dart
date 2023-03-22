import 'package:flutter/material.dart';

class AnimatedOpactiyScreen extends StatefulWidget {
  const AnimatedOpactiyScreen({super.key});

  @override
  State<AnimatedOpactiyScreen> createState() => _AnimatedOpactiyScreenState();
}

class _AnimatedOpactiyScreenState extends State<AnimatedOpactiyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Opacity')),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
