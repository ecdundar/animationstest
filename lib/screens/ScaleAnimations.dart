import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleAnimations extends StatefulWidget {
  @override
  _ScaleAnimationsState createState() => _ScaleAnimationsState();
}

class _ScaleAnimationsState extends State<ScaleAnimations>
    with SingleTickerProviderStateMixin {
  double _scale = 1.0;
  late AnimationController _animation;

  @override
  void initState() {
    super.initState();

    _animation = createScaleAnimation();
    _animation.forward();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Scale Animations')),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _scaleAnimationButton(),
          ),
        ));
  }

  _scaleAnimationButton() {
    return Transform.scale(
      scale: _scale,
      child: ElevatedButton(
        child: Text("Scaled button"),
        onPressed: () {
          if (_animation.status == AnimationStatus.completed) {
            _animation.reverse();
          } else if (_animation.status == AnimationStatus.dismissed) {
            _animation.forward();
          }
        },
      ),
    );
  }

  createScaleAnimation() {
    var animation = AnimationController(
      vsync: this,
      lowerBound: 1.0,
      upperBound: 3.0,
      debugLabel: "animations demo",
      duration: Duration(seconds: 10),
    );

    animation.addListener(() {
      setState(() {
        _scale = animation.value;
      });
    });

    return animation;
  }
}
