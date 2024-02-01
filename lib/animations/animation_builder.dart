import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuildWidget extends StatefulWidget {
  const AnimatedBuildWidget({super.key});

  @override
  State<AnimatedBuildWidget> createState() => _AnimatedBuildWidgetState();
}

class _AnimatedBuildWidgetState extends State<AnimatedBuildWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controllerAnimation =
      AnimationController(vsync: this, duration: const Duration(seconds: 10))
        ..repeat();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: _controllerAnimation,
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: _controllerAnimation.value * 2.0 * math.pi,
                child: child,
              );
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.blue),
            )),
      ),
    );
  }
}
