import 'package:flutter/material.dart';

class AnimatedOpactiyScreen extends StatefulWidget {
  const AnimatedOpactiyScreen({super.key});

  @override
  State<AnimatedOpactiyScreen> createState() => _AnimatedOpactiyScreenState();
}

class _AnimatedOpactiyScreenState extends State<AnimatedOpactiyScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Opacity')),
      body: Container(
        color: Colors.white,
        child: Center(
          child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1000),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: const Icon(Icons.visibility),
      ),
    );
  }
}
