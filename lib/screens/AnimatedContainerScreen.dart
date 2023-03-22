import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const Center(
                child: Text('Burulaş', style: TextStyle(color: Colors.white))),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();
              do {
                _width = random.nextInt(300).toDouble();
              } while (_width < 100);
              do {
                _height = random.nextInt(300).toDouble();
              } while (_height < 50);

              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());

              HapticFeedback.mediumImpact();
              SystemSound.play(SystemSoundType.click);
            });
          },
          child: const Icon(Icons.play_arrow),
        ));
  }
}
